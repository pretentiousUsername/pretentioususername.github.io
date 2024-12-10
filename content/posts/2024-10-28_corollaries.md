---
title: A couple corollaries
date: 2024-10-28
author: Ian Mitchell
math: true
draft: true
---

<!--$$\require{textmacros}$$
$$\newcommand{\diff}[3][{}]{\frac{d^#1 #2}{d #3^#1}}$$
$$\newcommand{\dl}[2][{}]{\, d#2^#1}$$
$$\DeclareMathOperator{\Tr}{Tr}$$-->

So, I'm taking math methods, a course designed for physics majors at DSU---it's
basically differential equations, linear algebra, and a few other subjects all
rolled into one class. So far I'm doing quite well in the class, so I figured I
would share a couple things I've noticed, in this case it's all relating to
second order ODEs (although it could be generalized a bit).

I'll likely come back and update this later for greater conceptual
clarity---these are being written down around midnight, and I'm pretty tired.


# 1. Constructing the Wronskian
Say that we have a differential equation on an interval
$$\diff[2]{y}{t} + a_1 \diff{y}{t} + b_0 y = 0 \,,$$
where \(t \in [0, t']\), and \(a_n'(t) = 0\), or, perhaps, some other differential equation with multiple solutions. If we
have a boundary value problem---say \(y(0) = y_0\) and \(y'(0) = y'_0\)---then we
use a system of linear equations in order to solve this system. Say that the
solution to our equation takes the form
$$y(t) = \sum_j c_j e^{r_j t} \,,$$
where \(r_j\,\, c_j \in \mathbb{C}\). Solve this in the simplest case, \(y(t)
= c_1 e^{r_1 t} + c_2 e^{r_2 t}\). Therefore, \(y(0) = c_1 + c_2\)
and \(y'(0) = r_1 c_1 + r_2 c_2\). We then construct a set of linear equations to
find the solution of this system,
<!--For some reason, MathJax is just being *really* weird about how it renders
math---I can't get it to use backslashes properly.-->
$$\begin{aligned}
c_1 + c_2 &= y(0) \,, \\
r_1 c_1 + r_2 c_2 &= y'(0) \,.
\end{aligned}$$
As you might have learned in your linear algebra class, we can construct an
augmented matrix from this system of equations to solve for \(c_1\) and \(c_2\).
Let's call the left side of the equations \(A\), and the right side \(\mathbf{v}\),
we would then create an augmented matrix \(\left[\begin{array}{c|c} A &
\mathbf{v} \end{array}\right]\),
$$\left[\begin{array}{cc|c}
    y_1(0) & y_2(0) &  y(0) \\\
    y_1'(0) & y_2'(0) & y'(0) 
\end{array} \right] \,.$$
In this case, the above matrix turns into
$$\left[\begin{array}{cc|c}
    1 & 1 &  y(0) \\\
    r_1 & r_2 & y'(0) 
\end{array} \right] \\,,$$
which can be solved with row reduction, or whatever method you can think of.

But, what's stopping us from just using our powers for evil? We can construct
$A$ and $\mathbf{v}$ to work for any arbitrary value of $t$---
$$\begin{aligned}
A(t) &= \begin{bmatrix} y_1(t) & y_2(t) \\\ y_1'(t) & y_2'(t) \end{bmatrix} \\,, \\\
\mathbf{v}(t) &= \begin{bmatrix} y(t) \\\ y'(t) \end{bmatrix} \\,.
\end{aligned}$$
Now, we can just take the determinant of $A(t)$ to get
$$\det{A(t)} = y_1(t) \\, y_2'(t) - y_1'(t) \\, y_2(t) \\,.$$
Finally, we can define the Wronskian as $W[y_1, y_2]\\!\left(t\right) =
\det{A(t)}$.


# 2. The eigenvalues of $A(t)$
So, we have $A(t)$ now, which is great, just *wonderful*. The characteristic
polynomial of $A(t)$ is found to be
$$\det\\!\left( A(t) - \lambda I_2 \right) = \det{A(t)} - \left( y_1(t)
    + y_2'(t) \right) \lambda + \lambda^2 \\,.$$
Let $z \equiv y_1 + y_2'$;[^Tr] now, we can find $\lambda$ with
$$\det{A(t)}  - z \lambda + \lambda^2 = 0 \\,,$$
or---and this is the exciting part---
$$\det{A(t)} = z \lambda - \lambda^2 \\,.$$
We can relate the Wronskian to the *eigenvalues* of $A$!

Just for completion's sake,
$$\lambda\\!\left(t\right) = \frac{1}{2} z \pm \frac{1}{2} \left( z^2 - 4 \det{A(t)} \right)^{1/2} \\,.$$

[^Tr]: $z(t) = \Tr{A(t)}$?


# 3. The harmonic oscillator
Say that we have a particle of mass $m$ attached to a spring with a constant
$k$, with some amount of friction $\gamma$. The displacement of this particle
is
$$\diff[2]{x(t)}{t} + \frac{\gamma}{m} \diff{x(t)}{t} + \frac{k}{m} x(t) = 0 \\,.$$
Since $k$ and $k$ are unchanging, we can find the solution to this equation as
$$x(t) = c_1 e^{\Omega_1 t} + c_2 e^{\Omega_2 t} \\,,$$
where $c_n ,\\,\Omega_n \in \mathbb{C}$. We can then find $\Omega$ with
$$\frac{k}{m} + \frac{\gamma}{m} \Omega + \Omega^2 = 0 \\,,$$
which is trivially solved as
$$\Omega = \frac{\gamma}{2 m} \pm \frac{1}{2m} \left( \frac{\gamma^2}{m^2} - \frac{4 k}{m} \right) \\,.$$
