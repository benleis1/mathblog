---
title: "Double angles"
date: 2017-07-14 22:01:00 +0000
tags:
  - digression
  - geometry
author: me
---

I've been thinking about a generalization of the [15-75-90 construction]({% post_url 2015-07-30-sometimes-one-direction-is-a-lot-tricker-than-the-other %}) over the last few days and have realized there are a lot more interesting consequences in it that are fairly pleasing.

![]({{ site.baseurl }}/assets/img/double-angles/blogger_0ac3d993.png)
First construct a rectangle ABED and divide it into 4 isosceles triangles.  My home made puzzle from this construction is: *find an expression for the length of CD in terms of AC and AB.*

Some angle chasing will show show that the lower and upper triangles are closely related.

![]({{ site.baseurl }}/assets/img/double-angles/blogger_c0bda03c.png)

If $\angle{CAB} = \theta$ then $\angle{DCH} = 2\theta$. What's more given the lengths of the triangle CDH sides (a,b and c) you can find the lengths of the triangle ACG in terms of them i.e.

Triangle ACG has side lengths of a, c - b and $\sqrt{a^2 + (c-b)^2}$. 

I've split the 30-60-90 before to get the 15-75-90 so I'll demonstrate splitting the 45-45-90 to get the 22.5 67.5 90 ratios.   

In this case,  let a = 1 then b = 1 and c =  $\sqrt{2}$ and from that you get the 22.5, 67.5 90 triangle is in the ratio  $1 : \sqrt{2} - 1 : \sqrt{4 - 2\sqrt{2}}$

Essentially this is the  geometric equivalent of the trig double angle formulas:

- $\sin2\theta = 2\sin\theta\cos\theta$
- $\cos2\theta = \cos^2\theta - \sin^2\theta$

and allows you to calculate the ratios of the $\theta$ triangle from the $2\theta$ triangle (or vice versa).

In fact its easy to verify the equivalence:

$ \sin2\theta = 2\sin\theta\cos\theta $

$ \frac{a}{c} = 2\frac{a}{\sqrt{a^2 + (c-b)^2}} \frac{c-b}{\sqrt{a^2 + (c-b)^2}} $

$                    = 2\frac{a(c - b)}{a^2 + (c-b)^2} $

$                    = 2\frac{a(c - b)}{a^2 + c^2 -2bc + b^2} $

$                    = 2\frac{a(c - b)}{2c^2 -2bc}  $  (Pythagorean Theorem)

$                    = \frac{a(c - b)}{c^2 -bc}  $  
$                    = \frac{a(c - b)}{c(c - b)}  $ 

$                    = \frac{a}{c}  $ 

Some interesting relationships fall out when you play with integer ratios.  For example

the 1:2 triangle double angle cousin is the  3 : 4 : 5 which is consistent with their structure.

My next thought is there is probably another general construction for the triple angle formulas which would be nifty since it would allow you to generate ratios for a lot more common angles but I haven't gone farther down this track yet. [**And on second thought: this was one of the great classical unsolved problems - only proved impossible in the 1800's.  You can trisect with some additional tools but I'm not sure if they allow what I want.]**