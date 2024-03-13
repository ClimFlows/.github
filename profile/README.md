# ClimFlows

ClimFlows is in its infancy. Its aim is to develop an *ecosystem* of *composable* packages that can serve as the basis for a variety of climate-relevant numerical models, especially for oceanic and atmospheric circulation.

Building an ecosystem means that a lot of thought and effort is put not only in the contents of each package, but also in their respective APIs. We expect that arriving at the 'right' APIs will be a trial-and-error process.

## Milestones
Since each independent package deliberately focuses on a limited task, the progress of the ecosystem towards usefulness is demonstrated by achieving milestones where existing packages are composed into a 'useful product'. Our first milestones are:

* a differentiable dry, hydrostatic, global atmospheric solver. Possibly based on spherical harmonics.
* a dry atmospheric general circulation model with generic thermodynamics and simplistic but physically-consistent parameterizations for radiation, turbulence and convection.
* an implicit-LES Boussinesq/anelastic solver in logically-Cartesian domains

## Language

Choosing a single computing language makes development easier, but it fractions the already small community of climate-relevant model developers. Ultimately, we would like to find ways to make ClimFlows a polyglot project, with a focus firstly on robust language-agnostic APIs based on sound concepts and abstractions, and secondly on implementations in different languages with different limitations.

For the time being ClimFlows is mostly Julia-based. We expect to implement the most promising APIs in (modern) Fortran when sensible, and to experiment with PyTorch/JAX. Contributors preferring other languages, especially C++, are welcome.
