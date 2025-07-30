using PkgTemplates
using Pkg: Pkg

function generate_climflows(pkg_name)
    ignore = ["*.jl.*.cov", "*.jl.cov",
                 "*.jl.mem", "*#",
                 "Manifest.toml",
                 "/docs/build/"]
    extra_versions=["1.8", "1.10", "pre"]
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
