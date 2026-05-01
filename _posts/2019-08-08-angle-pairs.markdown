---
title: "Angle Pairs"
date: 2019-08-08 19:35:00 +0000
tags:
  - pythagorean triple
  - digression
  - geometry
author: me
---

![]({{ site.baseurl }}/assets/img/angle-pairs/blogger_4c37a271.png)

Visual proof that \( \angle{BCA} + \angle{DCE} = \pi / 4 \) or alternatively \( \arctan \left( \dfrac{u-v}{u+v} \right) + \arctan \left(\dfrac{v}{u}\right) = \pi / 4 \)

Algebraically:   \( \arctan(x) + \arctan(y) = \arctan \left( \dfrac{x + y}{1 - xy} \right )  \)

In this case \( \dfrac{u - v}{u +v} + \dfrac{v}{u} = \dfrac{u^2 + v^2}{u(u+v)} =  1 - \dfrac{u - v}{u +v} \cdot \dfrac{v}{u}  \)  

So altogether its the case :  \(  \arctan(\dfrac{u - v}{u +v} ) + \arctan(\dfrac{v}{u}) =  \arctan(1) \)

This is a generalization of some of the ideas in: [previous post]({% post_url 2016-10-28-12-triangles-and-their-link-to-pythagorean-triples %}).    Its not just the angles in  1:2 and 1:3 triangles that add up to 45 degrees.  You can form an infinite number of  pairs: 6:16 and  5:11 or  1:7 and 3:4  or   34:96  and  31:65 etc.

Sample Problem that uses this via [@sansu-seijin]:

Find angle x.

There's more than one way to attack this one.  I did it with some complicated computations around the cyclic quads you can form.  But the core of the problem's structure revolves around the relationship above.

