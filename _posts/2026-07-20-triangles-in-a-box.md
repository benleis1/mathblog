---
title: "Four Triangle in a Box"
date: 2026-07-20
tags: [triangles in a box, proprotional, ratios]
author: me
math: true
---
I ran into an old problem I've seen multiple times but apparently never wrote a blog entry on.

![]({{ site.baseurl }}/assets/img/triangle-in-box/problem.png )

So today, I'm going to finally delve into it. I've seen a lot of variants on this in terms of orientation, the triangle areas and whether the outer rectangle is a square.  **Spoiler** it doesn't matter. The areas by themselves uniquely constrain the area of the remaining triangle tot he same value regardless of the rectangles proportions as long as they fit.

![]({{ site.baseurl }}/assets/img/triangle-in-box/step1.png )

There are several approaches you can take but the simplest and most direct one since you're given areas is to try to work in terms of areas and not drop down to segment lengths.  (That will work but can be much more complicated)

So like above the main conceptual technique is to draw into the central dotted axes.  You'll see that divides the box into 2 reflected triangles of area 5 in the lower right.  The other two outer triangles are made of half of 2 of the boxes where they both share the common one in the upper left.

We can formalize this as so

![]({{ site.baseurl }}/assets/img/triangle-in-box/step2.png)

What's nifty is because the various rectangles share the same side lengths they are proportional.  I.e [upper left] : [lowerleft]  = [upper right] : [lower right].  Or you could equivalently  say [upper left] : [upper right] = [lower left] : [lower right]

From there you arrive at a quadratic equation. $x^2 = 24x + 48 = 0$.  When solved you find $ x = 12 - 4 \sqrt{6}$ The other conjugate solution is discarded because it would lead to negative areas in some of the original rectangles.  With this in hand: its easy to calculate the total area of the square $12 + 4\sqrt{6}$ and then the inner triangle itself which is $4\sqrt{6}$

Since none of this assumed anything more than an outer rectangle - we also see the solution is unique independent of that outer rectangle's proportions.


