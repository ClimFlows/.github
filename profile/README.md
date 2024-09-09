# ClimFlows

ClimFlows is a work in progress. Its aim is to develop an *ecosystem* of *composable* packages that can serve as the basis for a variety of climate-relevant numerical models, especially for oceanic and atmospheric circulation.

Building an ecosystem means that thought and effort is put not only in the contents of each package, but also in the way they interact via their respective interfaces (APIs). We expect that arriving at the 'right' APIs will be a trial-and-error process.

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
Since each independent package deliberately focuses on a limited task, the progress of the ecosystem towards usefulness is demonstrated by achieving milestones where existing packages are composed into a 'useful product'. Our first milestones are:

* a *differentiable* dry, hydrostatic, global atmospheric solver. Possibly based on spherical harmonics.
* a dry atmospheric general circulation model with *generic thermodynamics* and simplistic but *physically-consistent* parameterizations for radiation, turbulence and convection.
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

ClimFlows Julia packages that are
not sufficiently general-purpose and mature to be registered in the General Julia registry
are registered in [JuliaRegistry](https://github.com/ClimFlows/JuliaRegistry).

## Gallery

The following plots and movies can be reproduced by running examples from [ClimFlowsExamples](https://github.com/ClimFlows/ClimFlowsExamples).

### Rotating shallow-water equations, spherical harmonics

https://github.com/ClimFlows/.github/assets/24214175/4410dfe0-eff4-4b8c-b17b-546103ba6579

### Rotating shallow-water equations, mimetic finite differences

https://github.com/ClimFlows/.github/assets/24214175/3ae1b0a0-bef2-4ef1-8602-7c1f86b381a4



