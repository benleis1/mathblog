---
title: "Spring Break Geometry"
date: 2017-04-07 23:00:00 +0000
author: me
---

[In exciting real news, I almost have a guest speaker from the UW Math department lined up for May. My hope is that this will be helpful in showing the kids that Math is a living field where research is still going on. My goal is to collect some questions ahead of time to prime the pump.]

In the meantime while we're on break, here is one of the latest problems  I've looked at from @go_geometry. This is a good example of the power of cyclic quadrilaterals and approaches to more difficult ratio problems. [(original problem)](https://t.co/ATyROmm5Rj)

![]({{ site.baseurl }}/assets/img/spring-break-geometry/blogger_bb932d89.jpg)

My first thought was that all segments in the ratio were on the same line. That's a problem because we only have a few tools to use that create ratios and they all need polygons.

1. Combinations of well known triangles.

2. Similar triangles.

3. Cyclic quadrilateral diagonals (which really are just similar triangles).

4. The angle bisector theorem (although I didn't initially think much of this one.)

- My second thought was that BC is congruent to every other side of the square so that could at least give sides to one triangle CD  and CG for instance but FG still looked hard.
- Triangle EFG is similar to ADE  which does generate some ratios involving FG and AD but I wasn't sure I could do much with them. The algebra looked fairly complex when playing with such ratios.
- It looked clear from everything so far that it would be a combination of ratios to produce the result.
- I then *noticed* ABEC was a cyclic quadrilateral since angle ABC = angle AEC = 90 degrees. That's useful for angle chasing and produces a set of similar triangle including ABF and CEF.

From those triangles one gets:

$\frac{BF}{AB} = \frac{EF}{EC}$  Since AB = BC that converts to $\frac{BF}{BC} = \frac{EF}{EC}$

That's about half way to the desired ratio $\frac{BF}{FG} = \frac{BC}{CG}$ so I rearranged the goal  to the same form on the left side:

$\frac{BF}{BC} = \frac{FG}{CG}$   which meant  I still had to show  $\frac{EF}{EC} = \frac{FG}{CG}$ 

- My next observation was that angle DEB sure looked like a right angle also.  I then stopped to measure and check in geogebra. That appeared correct so I looked around some more for reasons why this was the case. I started angle chasing and found BECD was also a cyclic quadrilateral since angle DBC = DEC = 45 degrees. This could be used to show that the original intuition DEB was in fact a right angle.

At this point I stopped and had a "duh" moment. If you add in the diagonals of the square and the circle that circumscribes it ABECD are all on it.  The diagonals of the square are the diameters of the circle and meet at its origin and its obvious why DEB had to be a right angle since its a triangle made of the diameter and a point on the circle.

![]({{ site.baseurl }}/assets/img/spring-break-geometry/blogger_0146ad5c.png)

This gives a lot of underlying structure for angle chasing. I could find all the angles at the top in my triangle of interest CEF including that CEG = FEG = 45 degrees.  (FEG inscribes the same arc as ABD which is a 45 degree angle in the square, then its simple angle subtraction)

I then stared at $\frac{EF}{EC} = \frac{FG}{CG}$  and realized the form looked familiar. This is a slightly rearranged version of the angle bisector theorem and EG does bisect angle FEC!  So

$\frac{EF}{FG} = \frac{EC}{CG}$ and when everything's combined you're done. Looking back this flowed fairly quickly from intuitions and observed patterns. The whole process was actually a bit chunky and done during various points in the morning when I had a moment.