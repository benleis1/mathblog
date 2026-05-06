---
title: "Tricky Geometry Problem"
date: 2018-04-11 02:07:00 +0000
author: me
---

In this walkthrough we start with one that didn't look too hard at first:

  !!![](https://pbs.twimg.com/media/DYaOXVpXcAER5nv.jpg)

Goal: Find angle $\angle \alpha $  [Ignacio Larrosa]

It quickly became apparent though that was going to be tricky and I spent a weekend doodling versions of this triangle and looking at different approaches.

Avenues of investigation

1. Angle chase. The isosceles triangle ADM is the starting point. At this point things were going well. All the angles can be described in terms of alpha and many are similar.

2.  Next I decided to model in Geogebra to see what the angle goal really was. This gave the target 18 degrees which was helpful. It also showed that ABC was a right triangle. So one path of investigation was to look into whether we could find expressions for the side lengths and show they satisfied the Pythagorean Equation. But it was hard to get them in a common variable.

3. I started looking for similar triangles - BM  reflected across BH creates another isosceleses for instance in an effort to build up side lengths but couldn't derive the 3rd side without another variable.

4. I also added a few other auxiliary lines to see if they aided including splitting DAM in half and the perpendicular bisector of AC. I  also extended AB to create a larger outer isosceles triangle. Again these were all interesting but I didn't see a full way forward.  The division of DAM was eventually part of the solution and I kept it in all the diagrams past this point since it *felt* very likely to be useful.

5. Played with Stewarts Theorem and various similar triangles trying to derive BM's length and looked for ways to show BM = AM.  That would prove B was on the circle circumscribing AC. This all didn't quite work.

6. I then became interested in subdividing BAM  again and the cyclic quads created by this. This was the breakthrough. First I started to notice all the right angles and then  I found enough similar triangles in this division to create two expressions for the same subsegment.  Even this idea took a bit of playing before it shook out. I ended up using the idea of scaling a similar triangle because it tends to lead to easier expressions to manipulate.

Here's what I came up with in the end:

1. Angle chase and a lot of similar triangles and cyclic quadrilaterals fall out.

2. I subdivided angle $\angle DBA$  on the right so I had more combinations of angle alpha to play with. It also seemed useful to add the perpendicular bisector of AB.

![]({{ site.baseurl }}/assets/img/tricky-geometry-problem/blogger_956547bd.PNG)

Note: green angles are $\angle \alpha$ and can be combined to make $2\alpha$ or $3\alpha$  red angles are $90 - 3\alpha$.  and the blue angle is $2 \alpha$

In particular: $ \triangle BIJ  \simeq   \triangle EHI $ forming a cyclic quad and therefore angle $ \angle EHB  $ is a right angle.

1.  So  let BC = AC = BG = m and   let  CJ =  a and BJ = m - a.  Then since $\triangle EHI $ is some scaled version of $\triangle IBJ$ lets assign k equal to the scale factor. Based on that EH = $ k \cdot BJ =  k\cdot (m -a)$  Likewise EI is k scaled version of BI.

2.  Next note $ \triangle BEI  \simeq   \triangle ACE $ .  Since EI is a k scaled version of BI, CE is a k scaled version of AC or $k \cdot m$  and CH = CE - EH = $k \cdot a $

3. Also $ \triangle BIJ  \simeq   \triangle BCH  \simeq \triangle CEJ $ all  $\alpha$ right triangles  and from this we get

$ \frac{CH}{BC} = \frac{CJ}{CE}$ or $\frac{k \cdot a}{m} = \frac{a}{k \cdot m} $

But after simplification this implies k  = 1   and $ \triangle BIJ $ is not just similar but congruent to

$ \triangle EHI $

4. So EI = BI and $\angle IBE = \angle BEI $   This means $2 \alpha = 90 - 3 \alpha $ and $\alpha = 18 ^{\circ} $