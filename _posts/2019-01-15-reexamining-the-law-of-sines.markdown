---
title: "Reexamining the Law of Sines"
date: 2019-01-15 18:01:00 +0000
tags:
  - digression
  - trigonometry
author: me
---

I've been working my way through Geometry Revisited over the last few days and so far I'm really happy with the purchase.

![]({{ site.baseurl }}/assets/img/reexamining-the-law-of-sines/blogger_14b71175.jpg)

One interesting approach that the first chapter takes is to frame/reprove many theorems through the law of Sines.  Normally this isn't even available as a tool until much later and I've never seen it as useful/fundamental as I'm now realizing.  This has been quite revealing to redo so I thought I'd throw a few side by side comparisons up.

Angle Bisector Theorem

![]({{ site.baseurl }}/assets/img/reexamining-the-law-of-sines/blogger_22e22843.PNG)

$$ \frac{c}{m} = \frac{a}{n} $$

In an elementary proof, one way to go is to add a parallel line and create similar triangles.

![]({{ site.baseurl }}/assets/img/reexamining-the-law-of-sines/blogger_b9465cbb.PNG)

1. Add the line CX which is parallel to AB.

2.  \( \angle{X} \) is congruent to \( \angle{ABD} \) from the parallel line and therefore triangle BCX is isosceles.

3.  So CX = BC = a.

4. Then using the similar triangles CBD and ADB we can take the corresponding sides and find \( \frac{c}{m} = \frac{a}{n} \)

Using the Law of Sines Instead

This time we go back to the original diagram and just apply the law.

1. \( \frac{n}{\sin{\angle{\alpha}}} = \frac{a}{\sin{\angle{BDC}}} \) 

2. \( \frac{m}{\sin{\angle{\alpha}}} = \frac{c}{\sin{\angle{BDA}}} \) 

3. But since BDC and BDA are supplementary, their sines have the same value, so you can solve both for the same sine ratio  and get:

$$ \frac{a}{n} = \frac{\sin{\angle{BDC}}}{\sin{\angle{\alpha}}}  = \frac{c}{m} $$

Concurrency of the medians

![]({{ site.baseurl }}/assets/img/reexamining-the-law-of-sines/blogger_5a7dd0d6.PNG)

![]({{ site.baseurl }}/assets/img/reexamining-the-law-of-sines/blogger_77d2ff8b.gif)

The book I'm using actually does this analytically by creating line equations for 3 medians and then solving for the 3 intersections and then showing that these are all the same point.

Here's a standard elementary proof:

**Given: **In the figure alongside, B and F are the midpoints of sides AC and AE. AG = GD.

**Proof: **In triangle ACD, B and G are the midpoints of sides AC and AD.

Therefore, BG//CD and BG = half the length of CD.

In the same way it can be proven that FG//DE and FG = half of the length of DE.

Since CG//DE and CD//GE, CDEG is a parallelogram.

This makes CH=HE since the diagonals of a parallelogram bisect each other.

Therefore AH is the third median of the triangle ACE.

Therefore G, the point of intersection of the three medians is the point of concurrency.

Instead let's use the law of Sines:

![]({{ site.baseurl }}/assets/img/reexamining-the-law-of-sines/blogger_74138be7.PNG)

We're going to start with the 2 bisectors for BC and AC that intersect at O and show that the segment from CO  through  to G also bisects AB.   We're also going to use the fact that that medians are divided in a 1:2 ratio at the centroid.

1. From the law of Sines on triangle BCG \( s =  \frac{2x \cdot \sin{\lambda}}{\sin{\alpha}} \)

2. Then from OEG  \( \frac{x}{\sin{\beta}} =  \frac{z}{\sin{\lambda}} \)

3. We combine to get \( s =  \frac{2z \cdot \sin{\beta}}{\sin{\alpha}} \)

4. But then look at the other segment s' from the law of sines on OAG we also get \( s' =  \frac{2z \cdot \sin{\beta}}{\sin{180- \alpha}} \)  and since the sines of supplementary angles are the same we have shown s = s'  and that CG is indeed a median.