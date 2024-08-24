---
title: More math typesetting
date: 2023-03-09
author: Ian Mitchell
tags: ["math", "physics", "typesetting"]
---

You know, git is a wonderful piece of software, and I love the way that it
enables developers to easily do version control and all that other great stuff,
but sometimes it fights me, and I don't know why.

Here's some math typesetting stuff. For starters I'll just write down the
Linblad equation, a nice bit of physics for open quantum systems,
<!--$$ \frac{\partial \rho(r, t)}{\partial t} = 
\sum_j \gamma_j \lparen L_j \rho(r, t) L_j^\dagger
- \frac{1}{2} \lbrace L_j L_j^\dagger, \rho(r, t) \rbrace \rparen
- i \lbrack H, \rho(r, t) \rbrack \,. $$-->

$$ \frac{\partial \rho(t)}{\partial t} =
\sum_j \gamma_j \left( L_j \rho(t) L_j^\dagger -\frac{1}{2} \lbrace L_j^\dagger L_j, \rho(t)\rbrace \right)
-\frac{i}{\hbar} \left[ H, \rho(t) \right] \, .$$
Does $v = \nu$? How do $g$, $u$, $v$ and *v*, $w$, and $z$ look? This is
slightly unrelated to the Linblad equation, since it's classical, but I'm the
God of this document, so I'll also write down the Boltzmann equation,
$$\frac{\partial f}{\partial t} + \frac{\partial H}{\partial\mathbf{p}}
\cdot \nabla f + \frac{\partial H}{\partial\mathbf{r}} \cdot \frac{\partial f}
{\partial\mathbf{p}} = \left( \frac{\partial f}{\partial t} 
\right)_{\text{coll}} ~ . $$


What about some *even more* fun stuff with Green's functions?---possibly from
*Quantum Kinetics in Transport and Optics of Semiconductors* by Haug and
Jauho?
$$
G(x, t; x^\prime, t^\prime ) = \theta(t - t^\prime )
G^>(x, t; x^\prime, t^\prime ) +
\theta(t^\prime - t) G^<(x, t; x^\prime, t^\prime ) ~ . $$
$$
A(k, \omega) = i \lbrack G^> (k, \omega) - G^< (k, \omega) \rbrack ~ .
$$
Maybe there's an equation we can use from Freerick's *Transport in Multilayer
Nanostructures*?
$$
G_{ii} (z) = \int \frac{A_{ii}(\omega^\prime)}{z - \omega^\prime} ~
d\omega^\prime ~ . $$
$$ \frac{\partial G_{i j}}{\partial \tau} = -\theta(\tau) \langle \lbrack
\hat{\mathcal{H}} - \mu N, c_i(\tau)\rbrack c_i(0) \rangle +
\langle c_j (0) \lbrack \hat{\mathcal{H}} - \mu N, c_i(\tau) \rbrack \rangle ~.
$$

## The *LaTeX Companion* gauntlet
A problematic example:
$$ t[u_1, \dots, u_n] = \sum_{k=1}^{n} \binom{n-1}{k-1} (1 - t)^{n - k}
t^{k - 1} u_k $$

An example showing a trigonometric function:
$$ \sin \frac{\alpha}{2} = \pm \sqrt{ \frac{1 - \cos \alpha}{2} } $$

Let $f$ be analytic in the region $G$ except for the isolated
singularities $a_1,a_2,\dots,a_m$. If $\gamma$ is a closed
rectifiable curve in $G$ which does not pass through any of the
points $a_k$ and if $\gamma\approx 0$ in $G$, then
$$
    \frac{1}{2\pi i} \int_\gamma f\Bigl(x^{\mathbf{N}\in\mathbb{C}^{N\times 10}}\Bigr)
    = \sum_{k=1}^m n(\gamma;a_k)\oint(f;a_k) ~.
$$
