# ClimFlows

ClimFlows is an ongoing effort to develop an *ecosystem* of *composable* and *extensible* packages that can serve as the basis for a variety of climate-relevant numerical models, especially for oceanic and atmospheric circulation.
Among our long-term goals are:
* *not monolithic*: cherry-pick interesting functionality without having to install the whole ClimFlows ecosystem
* competitive performance on CPUs and GPUs, enabling meaningful comparisons
* physical composability guided by up-to-date understanding of the structure of geophysical models
* works from laptops to top-100 supercomputers
* can be composed into models that go from toys to realistic
* inspire the design of other production-oriented codes

Building an ecosystem means that thought and effort is put not only in the contents of each package, but also in the way they interact via their respective interfaces (APIs). We expect that arriving at the 'right' APIs will be a trial-and-error process.

See our [Gallery](#gallery) which is sampled from [ClimFlowsExamples](https://github.com/ClimFlows/ClimFlowsExamples).

See all [pull requests](https://github.com/pulls?user=ClimFlows), [issues](https://github.com/issues?user=ClimFlows) and [code coverage](https://app.codecov.io/gh/ClimFlows?repoDisplay=Configured).

[![Build Status](https://github.com/ClimFlows/ClimFlowsTestCases.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/ClimFlows/ClimFlowsTestCases.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Build Status](https://github.com/ClimFlows/ClimFluids.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/ClimFlows/ClimFluids.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Build Status](https://github.com/ClimFlows/CFPlanets.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/ClimFlows/CFPlanets.jl/actions/workflows/CI.yml?query=branch%3Amain) 
[![Build Status](https://github.com/ClimFlows/CFShallowWaters.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/ClimFlows/CFShallowWaters.jl/actions/workflows/CI.yml?query=branch%3Amain) 
 [![Build Status](https://github.com/ClimFlows/CFHydrostatics.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/ClimFlows/CFHydrostatics.jl/actions/workflows/CI.yml?query=branch%3Amain)

[![Build Status](https://github.com/ClimFlows/CFTimeSchemes.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/ClimFlows/CFTimeSchemes.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Build Status](https://github.com/ClimFlows/SHTnsSpheres.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/ClimFlows/SHTnsSpheres.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Build Status](https://github.com/ClimFlows/CFDomains.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/ClimFlows/CFDomains.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Build Status](https://github.com/ClimFlows/CFTransport.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/ClimFlows/CFTransport.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Build Status](https://github.com/ClimFlows/CFMultigrid.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/ClimFlows/CFMultigrid.jl/actions/workflows/CI.yml?query=branch%3Amain)

[![CI](https://github.com/ClimFlows/ManagedLoops/actions/workflows/CI.yml/badge.svg)](https://github.com/ClimFlows/ManagedLoops/actions/workflows/CI.yml)
[![Build Status](https://github.com/ClimFlows/LoopManagers.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/ClimFlows/LoopManagers.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![CI](https://github.com/ClimFlows/SIMDMathFunctions.jl/actions/workflows/CI.yml/badge.svg)](https://github.com/ClimFlows/SIMDMathFunctions.jl/actions/workflows/CI.yml)

[![Build Status](https://github.com/ClimFlows/MutatingOrNot.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/ClimFlows/MutatingOrNot.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Build Status](https://github.com/ClimFlows/MemberFunctions.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/ClimFlows/MemberFunctions.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Build Status](https://github.com/ClimFlows/CookBooks.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/ClimFlows/CookBooks.jl/actions/workflows/CI.yml?query=branch%3Amain)

## Milestones
Since each independent package deliberately focuses on a limited task, the progress of the ecosystem towards usefulness is demonstrated by achieving milestones where existing packages are composed into a 'useful product'. Achieved milestones are:

* a hydrostatic, global atmospheric solver with arbitrary thermodynamics and competitive performance on CPU and GPU
  
Our next milestones are:

* a *differentiable* dry, hydrostatic, global atmospheric solver. Possibly based on spherical harmonics.
* a dry atmospheric general circulation solver with *arbitrary thermodynamics* and simplistic but *physically-consistent* models (parameterizations) for radiation, turbulence and convection.
* an implicit-LES Boussinesq/anelastic solver in logically-Cartesian domains

## Language

Choosing a single computing language makes development easier, but it fractions the already small community of climate-relevant model developers. Ultimately, we would like to find ways to make ClimFlows a polyglot project, with a focus firstly on robust language-agnostic APIs based on sound concepts and abstractions, and secondly on implementations in different languages with different limitations.

For the time being ClimFlows is mostly Julia-based. We consider implementing the most promising APIs in (modern) Fortran when sensible, and to experiment with PyTorch/JAX. Contributors preferring other languages, especially C++, are welcome.

## Package overview
* Physics:
  [ClimFlowsTestCases](https://github.com/ClimFlows/ClimFlowsTestCases.jl),
  [ClimFluids](https://github.com/ClimFlows/ClimFluids.jl),
  [CFPlanets](https://github.com/ClimFlows/CFPlanets.jl),
  [CFShallowWaters](https://github.com/ClimFlows/CFShallowWaters.jl),
  [CFHydrostatics](https://github.com/ClimFlows/CFHydrostatics.jl)
* Maths:
  [CFTimeSchemes](https://github.com/ClimFlows/CFTimeSchemes.jl),
  [SHTnsSpheres](https://github.com/ClimFlows/SHTnsSpheres.jl),
  [CFDomains](https://github.com/ClimFlows/CFDomains.jl),
  [CFTransport](https://github.com/ClimFlows/CFTransport.jl),
  [CFMultiGrid](https://github.com/ClimFlows/CFMultiGrid.jl)
* Performance:
  [ManagedLoops](https://github.com/ClimFlows/ManagedLoops.jl),
  [LoopManagers](https://github.com/ClimFlows/LoopManagers.jl),
  [SIMDMathFunctions](https://github.com/ClimFlows/SIMDMathFunctions.jl)
* Convenience:
  [MutatingOrNot](https://github.com/ClimFlows/MutatingOrNot.jl),
  [MemberFunctions](https://github.com/ClimFlows/MemberFunctions.jl),
  [CookBooks](https://github.com/ClimFlows/CookBooks.jl)
* Other:
  [ClimFlowsPlots](https://github.com/ClimFlows/ClimFlowsPlots.jl),
  [ClimFlowsData](https://github.com/ClimFlows/ClimFlowsData.jl)

ClimFlows Julia packages that are
not sufficiently general-purpose and mature to be registered in the General Julia registry
are registered in [JuliaRegistry](https://github.com/ClimFlows/JuliaRegistry/commits/master/).

### Dependency graph vs call graph

So far, the dependency graph of ClimFlows packages is essentially:
```mermaid
graph TD;
    LoopManagers==>ManagedLoops;
    CFDomains --> SHTnsSpheres
    CFHydrostatics-->ManagedLoops;
    CFTransport --> ManagedLoops;
    CFMultiGrid --> ManagedLoops;
    CFHydrostatics-->ClimFluids;
    CFHydrostatics-->CFPlanets;
    CFHydrostatics-->CFDomains;
    CFHydrostatics==>CFTimeSchemes;
    CFShallowWaters-->CFDomains;
    CFShallowWaters==>CFTimeSchemes;
```
Independent packages are omitted, as wel as the tiny `MutatingOrNot`. Plain arrows represent a call from one package to another, while bold arrows represent a *reverse dependency*, whereby a package implements a function whose interface (API) is defined in another package. These reverse-dependency arrows are essential to keep the dependency graph shallow. Furthermore, they make it possible to buy into only a fraction of ClimFlows. For instance it would be entirely possible to use a package from the Julia ecosystem to perform time integration, instead of using `CFTimeSchemes`. New packages can extend existing packages by implementing their API, in line with the [open-closed principle](https://en.wikipedia.org/wiki/Open%E2%80%93closed_principle). Extending packages this way does not require to modify the original package or to deepen the dependency graph.

The corresponding call graph has reverse dependencies 'forward'. A call graph requires a main program, here `VoronoiHPE.jl` from ClimFlowsExamples:

```mermaid
graph TD;
    VoronoiHPE-->CFDomains*;
    CFDomains*-->ClimFlowsData;
    ClimFlowsData-->NetCDF;
    CFHydrostatics*-->CFPlanets;
    CFHydrostatics*-->CFTestCases;
    VoronoiHPE-->CFTransport;
    CFTransport --> ManagedLoops;
    VoronoiHPE-->CFTimeSchemes;
    VoronoiHPE-->CFHydrostatics*;
    CFTimeSchemes-->CFHydrostatics;
    CFHydrostatics-->ManagedLoops;
    CFHydrostatics-->CFDomains;
    CFHydrostatics-->ClimFluids;
    ManagedLoops-->LoopManagers;
    LoopManagers-->KernelAbstractions;
    KernelAbstractions-->CUDA;
```
where a star indicates a call made when initializing the model. 

Only the main project `VoronoiHPE.jl` depends on `CUDA` and `ǸetCDF`, relatively big packages from the wider Julia ecosystem. Performance-critical routines from physics packages like `CFHydrostatics` are passed to `ManagedLoops`, `LoopManagers`, `KernelAbstractions` and ultimately to `CUDA` to be executed on a GPU. However `CFHydrostatics` itself only depends on the lightweight package `ManagedLoops`. Similarly the function `NetCDF.ncread` is passed by the main program to `ClimFlowsData` then `CFDomains`, which does not have to depend on `NetCDF` to read the mesh description from disk. This makes it easy to switch to a different storage format if desired.

## Gallery

### Hydrostatic compressible equations, spherical harmonics

https://github.com/user-attachments/assets/71d3168e-2d8e-4c71-9cf8-9b0d936a8881

### Rotating shallow-water equations, spherical harmonics

https://github.com/ClimFlows/.github/assets/24214175/4410dfe0-eff4-4b8c-b17b-546103ba6579

### Rotating shallow-water equations, mimetic finite differences

https://github.com/ClimFlows/.github/assets/24214175/3ae1b0a0-bef2-4ef1-8602-7c1f86b381a4



