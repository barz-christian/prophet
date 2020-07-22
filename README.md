This repository is created for an introductory talk about the paper [forcasting at scale](https://doi.org/10.7287/peerj.preprints.3190v2).

As its hearth it is an additive model:
$$
y(t) = g(t) + s(t) + h(t) + \epsilon_t.
$$

Where 

- $g(t)$ is the trend function, 
- $s(t)$ represents periodical changes and
- $h(t)$ represents holiday effects, these are irregular schedules over one or more days (for example eastern happen on thhe sunday of the first full moon in spring)

Each function has some parameters and the entire model can be expressed in a few lines of Stan code.
Instead of Marcov chain Monte Carlo methods for fitting they using penalized maximum likelihood estimation with optimization (L-BFGS).

We refer to the slides and the talk for more details.