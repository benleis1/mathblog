---
title: "Cool Geometry Problem"
date: 2015-05-20 17:08:00 +0000
tags:
  - Pythagorean Theorem
  - geometry
  - piled squares
  - brainstorming
author: me
---

I ran into another problem that I think demonstrates an unexpected and interesting fact

![]({{ site.baseurl }}/assets/img/cool-geometry-problem/blogger_f19fe908.jpg)

"I  will now present another land problem. The demonstration of the answer that I shall give will, I think, be found both interesting and easy of comprehension.

Farmer Wurzel owned the three square fields shown in the annexed plan, containing respectively 18, 20, and 26 acres. In order to get a ring-fence round his property he bought the Pg 52[](https://www.blogger.com/null)four intervening triangular fields. The puzzle is to discover what was then the whole area of his estate."  Henry Dudeney  "Amusements in Mathematics"

**In other words: if the 3 green squares above are connected to form four triangles. What is the area of the whole hexagon shape?**

The full solution without trigonometry requires the use of [heron's formula](http://en.wikipedia.org/wiki/Heron%27s_formula) as far as I can see[[*]](https://www.blogger.com/blogger.g?blogID=4227811469912372962#footnote) which puts it out of reach for the kids. But the more fascinating part to me is the fact that the four triangles above all have the same area!

Not only that, it's not too hard to prove:

![]({{ site.baseurl }}/assets/img/cool-geometry-problem/blogger_8eb5cb84.PNG)

[ Example with all the triangles between ABCD and its neighbors]

The diagram above shows all the triangles based off of  $ \square{ABCD} $ have the same area.   To start with they all the have the same base on the square BC = AD  = AB.  In each case I've extended the lines to find the altitudes.

For example:  altitudes GK and EJ belong to the triangles BGK and BEJ.

- The triangles are right triangles by construction. 
- Because $ \angle{EBG} $ and  $ \angle{CBA} $ are right angles a quick angle chase shows $ \angle{EBJ} \cong \angle{GBK} $
- They both share the same length hypotenuses since those lie on the square BEFG.
- Therefore the two triangles are congruent ASA and the altitudes in particular are the same.

This argument is symmetrical and can be constructed between every side to prove all the triangles have the same area.

**Addendum: Another way of seeing the same thing is that you can rotate the inner triangle ABE  90 degrees so its AB  length edge lines up to CB.  (This is colinear given the two angles) These will form a larger triangle with the shared edge exactly a median so the 2 halves i.e. the original triangles are the same size.**

I'm saving this one for a future session. I think I'll start by having the kids cut out different size squares and measure the triangles to organically discover they appear to be of the same area regardless of the square sizes and then move onto to figuring out why this must be true. This will work especially well paired with Pythagorean Theorem work given its similarities.

More Thoughts 4 Years Later 

[Motivated by a conversation lat night I'm revisiting a problem from four years ago. Its generally fascinating to review my thinking then.]

![]({{ site.baseurl }}/assets/img/cool-geometry-problem/blogger_65112dc8.PNG)

Since my initial write up, I've continued to value the fundamental observation about the triangles all having the same area between the squares.  But also I see more pathways nowadays to understand what's going on.

First, my first instinct is often to square things up as above.  What immediately stands out is how the inner triangle when split apart into 2 right triangles makes up all the other areas.  Even the outer rectangles on the bottom are are both twice its area since they share the same height and base.

Secondly there's some easy algebra for finding the area of the inner triangle without going fully into Heron's law:

Lets let the blue segment be x, the red segment y and the green segment z.

- $ x^2 + y^2  = 26 $
- $x^2 + z^2 = 20 $
-  $ y + z  = \sqrt{18} $

This set of equations is not too hard to solve via substitution:

- $ z = \sqrt{18} - y  \rightarrow   z^2 = 18 - 6 \sqrt{2} y  + y^2 $
- The second equation becomes: $x^2  - 6 \sqrt{2} y + y^2  = 2 $
- You can then subtract the two equations to solve for y: $  6 \sqrt{2}{y} =  24 \rightarrow  y = 2 \sqrt{2} $
- From there  you find $ z = \sqrt{18} - 2\sqrt{2}  = \sqrt{2} $ and $ x = 3 \sqrt{2} $

Interestingly:  y + z = x.   At this point we can quickly calculate the inner triangle's area is 9.  The decomposition above can be used in conjunction with these values to solve the rest of the problem.

- The 2 lower triangles have a base of  $  \sqrt{18}  $  and  a height of x which is the same base and height as the inner triangle.  So they have the same area. (In fact you can then rotate the drawing and show that the top triangle also has the same area as one of the lower ones so transitively they are all the same.

![]({{ site.baseurl }}/assets/img/cool-geometry-problem/blogger_1f329bfe.PNG)
(Rotation so that 26 is on the bottom and once again all the triangles still have the same base and altitude)

Enter the Law of Cosines
I referred to it offhandedly 4 four years ago but the Law of Cosines makes showing the area of the triangles are all the same almost trivial:

- For the inner one: $ 20 + 18 -  2 \sqrt{360} \cos \theta  = 26  \rightarrow \cos \theta = \frac{1}{\sqrt{10}} $. 
- $ \sin \theta = \sqrt{1 - cos^2 \theta} = \frac{3}{\sqrt{10}}  $
- Then using the area formula $ A = \frac{1}{2} \sqrt{20} \cdot \sqrt{18} \sin \theta \rightarrow \frac{1}{2} 6 \sqrt{10} \cdot  \frac{3}{\sqrt{10}} = 9 $.  (Basically all the weirdness cancels out!)
- But then look at the lower right triangle: it has the exact same side length and its inner angle is $ 360 - 2 * 90 - \theta $. Since the $ \sin(\theta) = \sin( 180 - \theta) $ the area formula is going to produce the same value as the inner triangle.
- This process can be repeated symmetrically on the other two outer triangles.

[Some more musing on this technique vs Heron's Law]({% post_url 2019-09-26-herons-formula-vs-trigonometry %})

A Related Problem:

[@sansu_seijin]

Given 2 squares with an area of 70 and 32 cm^2  as shown above. If the Length of the segment AB between the two squares is 18 cm, what's the area of the Blue Triangle CDE?

At this point I'm interested once again in using this as a problem string. I just need one more semi-related "square" problem to add on and I think I'll have a nice VNPS set. We might start looking for the fundamental observation as a group and then breakout to do the harder problems.
