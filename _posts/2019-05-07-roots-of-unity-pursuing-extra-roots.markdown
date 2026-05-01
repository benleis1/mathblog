---
title: "Roots of Unity: Pursuing Extra Roots"
date: 2019-05-07 18:55:00 +0000
tags:
  - digression
  - trigonometry
  - roots of unity
author: me
---

Background: This piece all started with my last [post]({% post_url 2019-05-03-trigonometry-walk-through-three-ways %}) thinking about equalities of the form \( \cos (nx) = \cos(mx) \)

For a given denominator p (especially when p is odd) its evident graphically that there is a vertical symmetry between the roots:

9th Root of Unity Example:

![]({{ site.baseurl }}/assets/img/roots-of-unity-pursuing-extra-roots/blogger_3ccbdbbf.png)

Above due to the vertical symmetry: \( \cos(x) = \cos (2\pi  - x)\)  for all the primitive roots.   Another way of thinking of this is in terms of the first root \( \cos(\frac{2\pi}{9} \cdot n) = \cos (\frac{2 \pi}{9} \cdot (9-n)) \)  You can conceptually make a scaling/rotational argument that it must then hold true for all the other roots. More formally with the cosine difference rule:  \( cos(\alpha) - cos(\beta) = -s \sin(\frac{\alpha + \beta}{2} )\sin(\frac{\alpha - beta}{2}) \)  we can do the following:

- \( \cos(2 \pi \cdot \dfrac{n}{p}) - \cos(2 \pi \cdot \dfrac{p - n}{p}) = -2 \sin( 2\pi) \cdot \sin(2 \pi \cdot \dfrac{p - 2n}{n}) \)
- \( \cos(2 \pi \cdot \dfrac{n}{p}) - \cos(2 \pi \cdot \dfrac{p - n}{p})  =-2 \cdot 0  \cdot \sin(2 \pi \cdot \dfrac{p - 2n}{n}) \)
- \( \cos(2 \pi \cdot \dfrac{n}{p})  = \cos(2 \pi \cdot \dfrac{p - n}{p})   \)

This is when things start getting interesting.  For the 9th root of unit above as can be seen from the circle there are only 5 distinct cosine values:  0 and the 4 paired points.  From the equation above (and its fun to verify)  for all these roots:

- cos(x) = cos(8x)
- cos(2x) = cos(7x)
- cos(3x) = cos(6x) 
- cos(4x) = cos(5x).  

Each of these equation can be reduced into one in terms only of cos(x).  See:  [Link](https://mymathclub.blogspot.com/p/cosine-power-reduction-triangle.html) for a nifty triangle for more easily reducing these expressions.  Once that's done we'll get equations of differing degrees and therefore differing numbers of roots.

Let's start with the simplest example:

cos(5x) = cos(4x)

\( 16x^5 - 20x^3 + 5x = 8x^4 - 8x^2 + 1\)

\( f(x) = 16x^5 - 8x^4 - 20x^3 + 8x^2 + 5x -1 \)

This  fifth degree polynomial must include all 5 distinctive primitive 9th roots of unity and it only has five roots so by the pigeonhole principal there is a one to one correspondence.

![]({{ site.baseurl }}/assets/img/roots-of-unity-pursuing-extra-roots/blogger_c5779cd4.png)

However all the other equations are in higher degrees. They still must have all the primitive ninth roots within them but there will other roots left.

Example 2:

cos(7x) = cos(2x)

\( g(x) = 64x^7 - 112x^5 + 56x^3- 2x^2 - 7x + 1 \)

![]({{ site.baseurl }}/assets/img/roots-of-unity-pursuing-extra-roots/blogger_5caaaa5f.png)

g(x) is graphed in green and you can see it interecting all the zeros of the f(x) plus 2 more points.  After thinking about this a bit I began to wonder what's the pattern to these extras? I started graphing some examples and looking at the remainders.  With this example after doing the polynomial division  \( \frac{g(x)}{h(x)} =   4x^2 + 2x - 1 \)  It  may not be immediately apparent but after trying some more examples all the residual polynomials start to look familiar. In fact this one is the characteristic equation for cos(2x) = cos(3x) without 0 the (cos(x)-1) root!

Its not too surprising that the residuals are all not random but why is this happening?  The same cosine difference rule comes to our aid again.

- \( \dfrac{\cos(7x) - \cos(2x)}{\cos(5x) - \cos(4x)} =  \dfrac{\ -2\sin(\frac{9x}{2})\cdot \sin(\frac{5x}{2})}  {\ -2\sin(\frac{9x}{2})\cdot \sin(\frac{x}{2})}  \)
- \( \dfrac{\cos(7x) - \cos(2x)}{\cos(5x) - \cos(4x)}  = \dfrac{ \sin(\frac{5x}{2})} { \sin(\frac{x}{2})}  \)
- \( \dfrac{ \sin(\frac{5x}{2}) \cdot  \sin(\frac{x}{2})  } { \sin(\frac{x}{2}) \cdot \sin(\frac{x}{2})}  = \dfrac{ \cos(3x) - \cos(2x)} { \cos(x) - \cos(0) } \)

This same process can be repeated for any of the various characteristic equations. So you'll always find the extra roots are from one of the lower cos(mx)  = cos(nx) equations and the particular m and n are easy to find based on the ratio.

