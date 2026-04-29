---
title: "Ratios vs determinants"
date: 2020-09-03 18:28:00 +0000
tags:
  - precalc
  - linear algebra
author: me
---

Today's post regards a small conceptual improvement.  It all started with the following problem which caused some trouble for the kids:

Given the constants a,b,c and d and a function f defined as

\( f(x) = \dfrac{ax + b}{cx+d} \)

For what values of a,b,c and d is there no inverse function?

So I took a look myself. First of all conceptually all rational functions of this form look similar to this:

![]({{ site.baseurl }}/assets/img/ratios-vs-determinants/blogger_07a16147.JPG)

There's always a horizontal and vertical asymptote and they are generally bijective.   That means an inverse normally exists:

So when does this break down?

The first step I took was to solve for x and find the inverse function:

\( f^{-1}(x) = \dfrac{dx - b}{a - cx} \)

I thought about one degenerate case where a and c were 0 and then decided to check out the composition which should be invariant:

\( f  \circ f^{-1}(x) = x \)

That works out to:

\( f  \circ f^{-1}(x) = \dfrac{ad - bc}{ad-bc} \cdot x \)

So as long as ad - bc does not equal 0 there is an inverse.** *But hey why does this looks like the determinant for a 2x2 matrix***?

$ det  \left( \begin{bmatrix}a & b\\c & d\end{bmatrix} \right) = ad - bc$

The conceptual key is to rewrite the determinant as  a ratio

\(  ad - bc = 0   \rightarrow \dfrac{a}{b} = \dfrac{c}{d} \)

In other words the coefficients in the original function f(x) or in the 2x2 matrix are just a **scaled version of each other** i.e. you can multiple the denominator by a constant and arrive at the numerator (or multiply the first row by a constant to get the 2nd row in the matrix version)  The other normal way of saying this is they are linearly dependent. 

In the case of the rational function that means all versions that don't have inverses are degenerate ones of the form  y = k.  For example choose:   

\( f(x) = \dfrac{2x + 4}{x+2} = 2 \)

