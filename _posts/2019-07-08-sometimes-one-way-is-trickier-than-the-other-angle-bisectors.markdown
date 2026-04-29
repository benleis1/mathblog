---
title: "Sometimes one way is trickier than the other: angle bisectors"
date: 2019-07-08 01:47:00 +0000
tags:
  - angle bisector theorem
  - geometry
author: me
---

Here's another example of one the most interesting parts of geometry for me. (courtesy of a mathjam participant last month) See: [earlier post](https://mymathclub.blogspot.com/2015/07/sometimes-one-direction-is-lot-tricker.html)  Given an isosceles triangle if you bisect both congruent angles its fairly straightforward to show the diagonals are congruent. But the other direction is considerably trickier.

![]({{ site.baseurl }}/assets/img/sometimes-one-way-is-trickier-than-the-other-angle-bisectors/blogger_a015c4f3.PNG)

**Problem: Given a triangle ABC with angle bisectors at A and B where the bisector segment BD = AE prove ABC is  isosceles.**

This turns out to be all about the angle bisector theorem and its variants  Background: [Angle Bisector Theorem applications](https://mymathclub.blogspot.com/2019/01/theres-more-to-angle-bisector-theorem.html)

And all of this was in mind prior to my starting but I still ended up taking quite a while to make it to a solution. At the night of the Mathjam I started by just applying the angle bisector theorem. By mistake I transposed a "d" and a "b" and thought I had immediately solved the problem by finding CD was congruent to CE.  Once this was realized, I ended up going back to the drawing board and looking for more interesting properties.

Observations:

- The intersection of the diagonals is in the incenter of the triangle and you can draw a line from C to it which will also be an angle bisector.
- You can drop altitudes from the incenter which will all be the radius of the incircle.
- The angle bisector can be applied twice for each vertex. Once for the pieces of the diagonal and once for the opposite side.
- Several of these equations share a common side: like s.

What was most clear was that it was easier to find ways to use the angle bisectors than the congruent diagonal segments and I would need both. Also if at any time I could find another set of congruent angles or segments in the basic triangle the result would follow soon after. I played around algebraically with the 6 equations for the bisectors without any breakthroughs so I ended up brainstorming some more

![]({{ site.baseurl }}/assets/img/sometimes-one-way-is-trickier-than-the-other-angle-bisectors/blogger_3a97a94b.PNG)

.

The first experiment I came up with was reflecting the entire triangle around AB while also flipping it. The hope was to create more of the congruent diagonal segments in a more useful position.  This created a lot of interesting things:

- Each side had two congruent isosceles triangles: DBE' and EAD'.  
- There were 3 sets of parallel lines.
- Because of that all six small triangles that make up the larger six pointed star are similar. 
- the two side triangle AJI  and BKL are even congruent.

But this construction is true for all triangles not just isosceles ones as I show above and I couldn't find a way to use the extra parts even with the angle bisectors to move forward.

![]({{ site.baseurl }}/assets/img/sometimes-one-way-is-trickier-than-the-other-angle-bisectors/blogger_371ca0d5.PNG)

Eventually I thought about bisecting the exterior angles of the triangle which then forms right angles and a bunch of cyclic quads. After angle tracing I became particularly excited because the top line is made up of two right angles and therefore must be colinear.

- There are 3 cyclic quadrilaterals here:  AGHC, AGBF and CEBH.
- There are also 4 right triangles ripe for the Pythagorean theorem.
- If you can just show the top segment is parallel to the bottom everything falls out.
- Two of the cyclic quads share a common edge in BE. 

My hope was that I could add in the various side lengths and apply the similar triangles in the cycle quad in addition to the Pythagorean theorem to show AB had the same length as BC.  But as you can see above this construction works for all triangles with angle bisectors and is not special to this case. After reaching a dead end I decided that this was still not fully using the congruent diagonals and they were key to making progress.  (I still think the construct is really cool though)

The Solution.

So after trying to start with different segments as base variables and getting stuck I returned to my original line of attack. While I had used the basic angle bisector theorem, on review I realized I also had the equation for the diagonals in terms of the sides and that might leverage that initial condition enough to solve the problem.    This time around the algebra made more sense.

[See above for the segment labels.]

- From the basic angle bisector theorem:

\( \dfrac{d}{s} = \dfrac{b}{a+c} \text{ or }   (a+c)\cdot  d  = b \cdot s \)

\( \dfrac{c}{s} = \dfrac{a}{b+d} \text{ or }  (b+d)\cdot c = a \cdot s \)

- From the extensions for the diagonals: [(See here)](https://mymathclub.blogspot.com/2019/01/theres-more-to-angle-bisector-theorem.html)

\( (b + d) \cdot s  - a \cdot c = AE^2 = BD^2  = (a + c) \cdot s - b \cdot d  \)

\( \boldsymbol{b \cdot s} + d \cdot s + b  \cdot d = \boldsymbol{a \cdot s} + c \cdot s + a \cdot c \)

- Substitute in the first expressions and the two sides are almost the same:

 \( (a+c) \cdot d + d \cdot s + b \cdot d = (b+d)\cdot c + c \cdot s + a \cdot c \)

\( c \cdot d +  d \cdot (a + s  + b) =  c \cdot d + c \cdot (a + s + b) \)

\( d \cdot (a + s  + b) =  c \cdot (a + s + b) \)

\(  c = d \)

- Now you can show the bottom sub triangles \(\triangle{ABE} \)  and  \( \triangle{ADB} \) are congruent via SSS and the therefore the corner angles A and B are also congruent and the overall triangle is isosceles.

