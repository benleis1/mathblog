---
title: "More connections"
date: 2018-06-08 18:12:00 +0000
tags:
  - digression
  - algebra
author: me
---

I've been thinking alot about polynomial deltas recently. See: [polynomial-differences]({% post_url 2018-05-01-polynomial-differences %}).  It turns out, that there are a variety of problems where its fun to use them. Basically anywhere you think you have a polynomial function and you can curve fit is a good candidate.

For example:  Find a formula for \( \sqrt{n\cdot (n+1) \cdot (n + 2) \cdot (n+3) + 1} \)

You could do the algebra and factor cleverly or you could calculate the easy values around 0,1,2 ... and calculate the deltas to do a quick fit.

![]({{ site.baseurl }}/assets/img/more-connections/blogger_0f6b0d64.jpg)

But I thought of another scenario this morning where I think they come in particularly nicely and answer a long standing philosophical question of mine. There's a class of formulas that are usually proven inductively where one's often left asking: "How did someone find the original pattern to test?" As a student I would just play around, but now I see these more as curve fitting exercises.

A good example of this is the sum of squares \( \sum_{i=1}^{n}n^2   = \frac{n (n+1)(2n +1)}{6}\)

The inductive proof is not hard, and there are some beautiful visual versions ([link to proof](https://www.maa.org/sites/default/files/Siu15722.pdf) ) but it was always hard for me to think how this was actually discovered.   Enter the deltas ....

When looking for a formula we just need to generate enough values and see if the deltas resolve. If they do its a nth degree polynomial and we can work out the coefficients.

n   sum-of-squares  deltas

0    0

             1

1    1            3

             4           2

2    5            5

             9           2

3   14           7

            16

4   30

This shows its a 3rd degree polynomial of the form  \( Ax^3 + Bx^2 + Cx + D\)    

- from f(0) = 0 we see D = 0 
- from the deltas we see  \( A = \frac{2}{6!} = \frac{1}{3} \)  
- We can then substitute in f(1) and f(2) to get a simple system \(B + C = \frac{2}{3} \) and \(4B + 2B = \frac{7}{3} \)
- After solving we find: \( f(x) = \frac{x^3}{3} + \frac{x^2}{2} + \frac{x}{6} \)  which combines to exactly our original  \( \frac{n (n+1)(2n +1)}{6}\)

**Note: you could also treat this like a linear system if you can tell what degree the function is likely to be but that's actually more work anyway in many cases.**