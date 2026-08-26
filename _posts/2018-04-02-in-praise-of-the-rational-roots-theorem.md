---
title: "In praise of the Rational Roots Theorem"
date: 2018-04-02 18:43:00 +0000
tags:
  - digression
  - algebra
author: me
---

First some personal historical background. In my school district, you could do Algebra in middle school but unlike a standard class it only covered linear equations.  When I was in High School after doing  Geometry in 9th grade, I entered a 3 year accelerated math sequence that terminated with AP Calculus BC.  For the first year we did a semester going over quadratics leading up to the derivation of the quadratic formula and a semester of trigonometry.   So for all intents and purposes, I didn't learn anything from the standard Algebra II curriculum. Interestingly, this didn't have any particular consequences and as time went by I learned some of the topics when necessary and required for something else. I remember thinking in College, "I wish I had covered more Linear Algebra/Matrices" but never really "What's Descartes' rule of signs?"

However, over the last few years my affection for two particular tools from there has grown quite a bit: The Rational Roots Theorem and Polynomial division.  First, these are often under attack and dropped (just as in my own experience).  Its not unusual to see people wonder online: what are the real world applications of these or will they ever be used again?  In High School, I might have said you can always graph and use approximation techniques like Newton's Method when these come up. More significantly,  the existence of Wolfram Alpha has made generalized solutions to cubic and quartic equations easily accessible (if not derivable) From my perspective, they are two basic polynomial analysis techniques that offer a gateway to understand higher degree polynomials.  That understanding is valuable in itself but in addition they offer a fairly general technique for a lot of algebraic puzzles that I try out and I find it extremely satisfying to be able to analyze these with  just pencil and paper.

Example 1:

$$x^2 - 13 =\sqrt{x + 13}$$

This looks not to hard at first until you square both sides to get rid of the radical and realize its a quartic in disguise:

$x^4 - 26x^2 + 169 = x + 13$ => $x^4 - 26x^2 -x + 156 = 0$

A common strategy at this point is to look for clever factorizations.  But its often really hard to see where to start. In fact, I find these are often easier to derive backwards after you know the roots anyway.

So let's start with a quick graph of the  functions. This could be done by hand but I'll use geogebra here. The left hand side is a parabola with vertex at (0,-13) while the the right hand side is half of the rotated 90 degree version of the same parabola with a vertex at (-13,0).  If you're looking for factorization this symmetry is something that provides an avenue of attack. But for our purposes it also shows us there are only 2 real roots in the quartic and approximately where they lie.

![]({{ site.baseurl }}/assets/img/in-praise-of-the-rational-roots-theorem/blogger_7b266c1d.png)

Here's where the Rational Roots test comes in. Since 156  = $2^2\cdot 3  \cdot 13$ It says that if there is rational root its going to be either: $ \pm 1, \pm 2, \pm 3, \pm 4\, \pm6, \pm 12, \pm 13, \pm26,  \pm 39, \pm 52, \pm 78$ or $ \pm156 $  That's a bit daunting but looking at the graph or the behavior of the functions indicate we really only need to test smaller values and 4 is probably the most promising.

I just plugged that back into the original problem rather than doing the quartic and indeed -4 works out. (This is a bit of a cheat since not all the quartic solutions are also solutions to the original problem due to sign issue with the radical but if it does work then you're golden.)

At this point we know know x+4 is a factor of the original quartic and we can divide it out to get a simpler cubic equation.

Apply polynomial division $\frac{x^4 - 26x^2 - x + 156 }{x+4} = x^3 -4x^2 - 10x + 39$  to get the remaining cubic part of the equation.

Now once again we can apply the rational roots test but on the much smaller set {1,3,13,39}.  Its clear from the graph that none of these are going to be a solution to the original problem and that again the smaller ones are more likely. So starting at 1, I find that 3 works out  (27 - 36  - 30 + 39 = 0).   That mean x -3 is another factor.  Interestingly you can see why it doesn't work:  9 - 13 = -4 while the square root of 13  + 3 = 4.  So the inverse sign changes have interfered (but if the bottom of the sideways parabola were present that would be an intersection point). 

Once again apply polynomial division  $ \frac{x^3 -4x^2 - 10x + 39}{x - 3} = x^2  - x - 13 $   Having factored the quartic down to an approachable quadratic we can now  apply the quadratic formula to find two more solutions:  $ \frac{1 \pm \sqrt{53}}{2} $.   Either by testing or looking at the graph we can see $ \frac{1  + \sqrt{53}}{2} $ is the second solution while its converse again lies on the intersection of missing bottom half of the sideways parabola.

Extension for another time:  We have 3 and 4 wouldn't it be nice if 5 also showed up (and this is tantalizingly close to the generator function for pythagorean triples in the complex plane)?  Is there a general form to the intersections of this type i.e. a parabola and its rotated counterpart?

Example 2:

Find the integer solutions to: $x^3y^3 - 4xy^3 + y^2 + x^2 - 2y - 3 = 0$

This again looks fairly complex and of degree 6 on first glance. But lets try experimenting with values of x and see what falls out:  [I'm going to only consider the x >= 0 for simplicity here but somewhat similar logic applies for the negatives.]

if x = 0 this simplifies to:

$$y^2 - 2y - 3 = 0$$ which has 2 integer roots.

if x  = 1 this simplifies to:

$$-3y^3 + y^2 -2y - 2 = 0$$

We can applies the rational root test and check the possible integers $\pm1, \pm2$ with no hits.

if x = 2 this simplifies to:

$$y^2 -2y + 1 = 0$$ which has one integer solution.

**Note the constant term flipped from negative to positive at this point and now something interesting happens**

if x = 3 this simplifies to

$$15y^3 + y^2 -2y + 6 = 0$$

The rational roots test now is only going to give positive candidates and the higher degree terms start to dominate making it impossible for this to reach 0 with an integer. I.e. $15y^3 + y^2  > 2y$ for all integers > 1.

Continuing on the same trend  if x = 4 this simplifies to

$$48y^3 + y^2 -2y + 13 = 0$$  For the same reason this is even worse  $48y^3 + y^2  > 2y$ for all integers > 1.

So we can infer with this logic that no integer solutions exist above x = 2.

**Example 3:**

Solve:

$$x^2 - xy + y^2 = 13$$ $$x -xy + y = -5$$

![]({{ site.baseurl }}/assets/img/in-praise-of-the-rational-roots-theorem/blogger_91e477fa.PNG)

Note: this is the symmetric intersection of a tilted ellipse and hyperbola.  There's a clever substitution that can simplify this which I'll mention at the end but in the general case this system is actually a quartic in disguise.

If directly attacking the problem, the starting point is the second equation with the simpler degree terms that allow us to easily isolate x or y.

$ x + 5 = xy - y = y (x -1)$ or after confirming x - 1 => x = 1 is not a solution and can be safely divided  $ y = \frac{x + 5}{x -1}$

We can substitute that back into the first equation to get:

$$x^2 + x \cdot \frac{x+5}{x-1} + (\frac{x+5}{x-1})^2 = 13$$

Now multiply everything by $(x-1)^2$ to arrive at:

$$x^4 - 2x^3 + x^2 - x^3 - 4x^2 + 5x + x^2+ 10x + 25 = 13x^2 - 26x + 13$$ which cleans up to the following quartic:

$$x^4  -3x^3 - 15x^2  + 41x + 12 = 0$$

Again using the rational roots theorem you only have to test 1,2,3,4,6, and 12. I also check from the bottom up since its simpler and you don't need to recheck again if you find a factor and divide to a simpler polynomial. Going up from one, first 3 and then 4 test successfully as roots leading to the following factorization once you do the polynomial division:

$$(x-3)(x-4)(x^2 + 4x + 1) = 0$$ and from here the four (symmetric) solutions fall out.

As promised the clever factorization in problem like this where there are only xy and x + y terms is to consolidate and substitute taking advantage of the fact that symmetric polynomials can always be rewritten using [elementary symmetric polynomials](https://en.wikipedia.org/wiki/Elementary_symmetric_polynomial) :

First rearrange the original equations:  $(x+y)^2 - 3xy = 13$ and $(x + y) + 5 = xy$

Substitute for xy to arrive at $ (x+y)^2 -3(x+y) -28 = 0$

Then substitute again w = x + y and solve the quadratic  $w^2 -3w - 28 = 0$ Once done replug the solutions x + y = 7 and x + y = -4 back into the original equations to solve a second set of quadratics. Note: this is actually probably just as much work as directly attacking the quartic since in effect you have to handle 3 quadratics.

Further Digression:

![]({{ site.baseurl }}/assets/img/in-praise-of-the-rational-roots-theorem/blogger_f0eea3e8.PNG)

Conceptually I actually prefer the following approach.  From either the graph or the symmetrical nature of both equations it looks interesting to rotate them 45 degrees back to non-tilted form. This is desirable because it will remove xy terms.

So applying the standard rotation equations:  $x' = x cos(\theta) + y sin(\theta)$ $y' = x sin(\theta) - y cos(\theta)$ to the two equations for $\theta = -\frac{\pi}{8}$  we get:

$x^2 - xy + y^2 = 13$ becomes $(\frac{\sqrt{2}}{2}x - \frac{\sqrt{2}}{2}y)^2 - (\frac{\sqrt{2}}{2}x - \frac{\sqrt{2}}{2}y) (\frac{\sqrt{2}}{2}x + \frac{\sqrt{2}}{2}y) + (\frac{\sqrt{2}}{2}x + \frac{\sqrt{2}}{2}y)^2 = 13 $

That simplifies to $(x')^2 + 3(y')^2 = 26 $

Likewise $x - xy + y = -5$ becomes $ (\frac{\sqrt{2}}{2}x - \frac{\sqrt{2}}{2}y) - (\frac{\sqrt{2}}{2}x - \frac{\sqrt{2}}{2}y) (\frac{\sqrt{2}}{2}x + \frac{\sqrt{2}}{2}y)  + (\frac{\sqrt{2}}{2}x + \frac{\sqrt{2}}{2}y) = -5 $

Once again this simplifies nicely to $ (x' - \sqrt{2})^2 - (y')^2 = 12$  and these two equations are solved in a fairly standard fashion via elimination i.e.

$   3(x' - \sqrt{2})^2 - 3(y') ^2 = 36 $

$+    (x')^2 + 3(y')^2  = 26 $

$    4(x')^2 - 6\sqrt{2}x'  + 6 = 62 $

Solving with quadratic equation and $x' = \frac{7\sqrt{2}}{2},  y' = \pm \frac{\sqrt{2}}{2} $ or $ x' = -2\sqrt{2}, y' = \pm \sqrt{6} $

If you look back at the previous solutions at first this looks odd but remember these have to be tilted back 45 degrees to give the proper solutions and sure enough for instance $ (\frac{\sqrt{2}}{2} \cdot \frac{7\sqrt{2}}{2} + \frac{\sqrt{2}}{2} \cdot \frac{\sqrt{2}}{2}, \frac{\sqrt{2}}{2} \cdot \frac{7\sqrt{2}}{2} -  \frac{\sqrt{2}}{2} \cdot \frac{\sqrt{2}}{2}) = (4,3) $

Addendum:

I just found this video showing another nifty usage.  Proving irrationality of expression by expanding to a polynomial.

For example: to check: $ \sqrt{2}$ set it equal to x and square it to arrive the  at the polynomial $ x^2 - 2 = 0 $ Since none of the possible rational candidates work (1,2) and we know $ \sqrt{2} $ is a solution, it must be irrational!

