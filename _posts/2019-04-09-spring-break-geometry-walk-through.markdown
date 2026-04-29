---
title: "Spring Break - Geometry Walk Through"
date: 2019-04-09 17:55:00 +0000
tags:
  - 3-4-5
  - digression
  - angle bisector theorem
  - geometry
author: me
---

**Note: with Spring I really have no kids. Even my own are with my parents so here's an old walk through I had laying around.  On reread after a significant gap between writing it I still really like the multiple approaches that are possible.**

  I saw this one courtesy of @mikeandallie:

![]({{ site.baseurl }}/assets/img/spring-break-geometry-walk-through/blogger_bd71584c.PNG)

Given a 3-4-5 triangle where the angle C is bisected and connected to the hypotenuse. How long is segment CD?

I like this one for several reasons. First, its a 3-4-5 (how many posts have I talked about them now?) But secondly there are a lot of ways to look at this and solve it.

Pythagorean:

1. Since we have an angle bisector we can use the angle bisector theorem to find AD and DB  (Who can resist an opportunity to do that!)

\(\dfrac{AD}{DB} = \dfrac{4}{3} \) and AD + DB = 5 leading to lengths of \(\dfrac{20}{7}\) and \(\dfrac{15}{7}\) respectively.

2. We can then drop an altitude 

![]({{ site.baseurl }}/assets/img/spring-break-geometry-walk-through/blogger_416f38df.PNG)

Area =  \(\frac{1}{2}\cdot 3 \cdot 4 = 6\) so  \(\frac{1}{2}\cdot 5 \cdot CE = 6 \)  and CE = \(\frac{12}{5}\)

You can then find AE via scaling to be \(\frac{16}{5}\) and subtract it to get DE.

Now apply the Pythagorean theorem on triangle CDE   \(CD = \sqrt{\frac{12}{5}^2 + (\frac{20}{7} - \frac{16}{5})^2}\)  

This will eventually simplify to \(\sqrt{2} \cdot \frac{12}{7} \)

That's a lot of steps and computation.

Stewart's Law:

We actually have all the parts to apply Stewarts law:

\( AC^2 \cdot BD + BC^2 \cdot AD = AB \cdot (AD \cdot BD + CD^2) \)  or

\(16 \cdot \frac{15}{7} + 9 \cdot \frac{20}{7} = 5 \cdot (\frac{300}{49} + CD^2)\)

Ok that saved a few steps but still involves a lot of calculation and square roots.

Heron's Law:

Perhaps we could use herons law to help out here: We can easily calculate the areas of the two sub

triangle ACD and BCD and then solve the resulting equation

The semi-perimeter in this case for ACD is \(\frac{4 + \frac{20}{7} + CD}{2}  = \frac{48 + 7CD}{14}\) 

\(\frac{4}{7} \cdot 6 =  \sqrt{S \cdot (S - \frac{20}{7}) \cdot (S - 4) \cdot (S - CD)} \)

There will be some parallelism / differences of squares here but this actually an even more difficult quartic to solve and I think I'll leave it here.

**Angle Bisector:**

**[This is a note from the future]**

Nowadays: I have a handy formula for this: [https://mymathclub.blogspot.com/2019/01/theres-more-to-angle-bisector-theorem.html](https://mymathclub.blogspot.com/2019/01/theres-more-to-angle-bisector-theorem.html)   that while basically the same as the first 2 approaches is simpler to compute due to pre-simplification.

\( CD^2 = AC \cdot BC - AD \cdot BD \) So after using the angle bisector theorem. We merely have to do:

 \( CD = \sqrt{4 \cdot 3 -  \dfrac{20 *15}{7 \cdot 7}} = \sqrt{\dfrac{288}{49}} =  \sqrt{2} \cdot \dfrac{12}{7} \) 

Break Through:

This is actually an intentionally deceptive diagram given its orientation. Everything above focused on the angle bisectors without noting that this is a right triangle and that we know they are each 45 degrees.   I originally thought about that and wondered if we could do something analytic. That also made me flip the triangle around so the 45 degree line was easier to manipulate.

![]({{ site.baseurl }}/assets/img/spring-break-geometry-walk-through/blogger_0ef38f13.PNG)

Analytic Approach:

Because its a 45 degree angle AB is also on the equation x = y.  The hypotenuse is on the equation \(y = 3 - \frac{3}{4} x \)

We can solve this system to find the coordinates of D and then use the simplified distance formula to calculate the length AD. That still has a Pythagorean theorem embedded in it and is a small but not huge improvement over the original approach.

Similar Triangles

But before I did this, looking at the new orientation suggested adding one more line:

![]({{ site.baseurl }}/assets/img/spring-break-geometry-walk-through/blogger_13da13cf.PNG)

We now have a 45-45-90 triangle and a new smaller 3-4-5 triangle CDE.  This is convenient. We can set BE = DE = x and CE = 4 - x.

Because CDE is also a  3-4-5  \(\frac{x}{4-x} = \frac{3}{4}\)  this simplies to \(x = \frac{12}{7}\)

and then since BD is the hypotenuse of a right isosceles triangle its just \(\sqrt{2} \cdot x \)    What's especially nice is this gives a simple explanation for the radical in the original solution we found. 

Moral of the story: always look for a similar triangle before jumping into a Pythagorean or more complex approach and/or keep looking at a problem beyond the first solution you see.

