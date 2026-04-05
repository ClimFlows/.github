using PkgTemplates
import Pkg

function generate_climflows(pkg_name)
    ignore = ["*.jl.*.cov", "*.jl.cov",
                 "*.jl.mem", "*#",
                 "Manifest.toml",
                 "/docs/build/"]
    extra_versions=["1.8", "1.10", "1"]
    plugins = [Git(; manifest=false, ssh=true, ignore),
               GitHubActions(; extra_versions),
               Codecov(),
               Documenter{GitHubActions}()]
    try
        Template(; plugins)(pkg_name)
    catch e
        @info "If git user is not set, do 'git config --global --add github.user GITHUB_USER'"
        throw(e)
    end
end

function build_docs(pkg)
    old_env = Base.active_project()
    pkgdir = dirname(dirname(pathof(pkg)))
    try
        Pkg.activate(joinpath(pkgdir, "docs"))
        Pkg.instantiate()
        include(joinpath(pkgdir, "docs", "make.jl"))
    finally
        Pkg.activate(old_env)
    end
    return nothing
end
