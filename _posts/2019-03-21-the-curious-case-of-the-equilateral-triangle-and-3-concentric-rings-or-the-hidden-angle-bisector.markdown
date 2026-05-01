---
title: "The curious case of the equilateral triangle and 3 concentric rings or the hidden angle bisector"
date: 2019-03-21 16:18:00 +0000
tags:
  - digression
  - angle bisector theorem
  - geometry
author: me
---

Each of the vertices of an equilateral triangle lie on one of  the three concentric circles with radii 1, 2 and 3. Find the length of the side of the equilateral triangle

[@zeche63]

Several solutions to this were posted online but I kept thinking about pieces of the problem so I went ahead and started this write up.

First: when looking at the problem, I connected the vertices to the center of the circles. The 3 side lengths strongly suggested the law of cosines to me. All that was missing was the angle. And then I made a small leap. **If all 4 points formed a cyclic quad then we could easily get the angle**. So I gave it a shot, worked through the law of cosines in this case and found a solution. Most of the online versions I saw implicitly did the same thing.

![]({{ site.baseurl }}/assets/img/the-curious-case-of-the-equilateral-triangle-and-3-concentric-rings-or-the-hidden-angle-bisector/blogger_774a5798.PNG)

But that's not really satisfying. Do the 4 points really lie on a circle? There are several ways to prove this is true in general but here the converse of [Ptolemy's Theorem](https://en.wikipedia.org/wiki/Ptolemy%27s_theorem) is the one that works.  \( BC \cdot OA = BO \cdot AC + AB \cdot OC \)  or after putting the values in and letting s be the side length of the triangle: the sides do satisfy the theorem \( 3s = s + 2s \)  Based on the cyclic quad it also falls out that \( \angle{BOC} = 120 \) and you can then immediately look at  \( \triangle{OBC} \) via the law of cosines.

\( OB^2 + OC^2 - 2 \cdot OB \cdot OC \cos{(120)} = s^2 \)

\(4 + 1 - 2 \cdot -\frac{1}{2} = s^2 => s = \sqrt{7} \)

Or alternatively extend OC to make a right triangle with BC and the extra triangle is also a 30-60-90. So you get \( BC^2 = 2^2 + \sqrt(3)^2 \)

[Note: looking at things the other way via Ptolemy's theorem its also true that \( BC \cdot OA = BO \cdot AC + AB \cdot OC   \rightarrow   AO = BO + CO  \)]

But  the cyclic quad gives more than just that angle.  From it you can also see \( \angle{BOA} = \angle{BCA} = 60 \) and \( \angle{COA} = \angle{CBA} = 60 \) or in other words OA is the angle bisector of \( \triangle{OBC} \) .  **(For other posts on this theme see: [last post on the subject]({% post_url 2019-03-10-lets-use-the-angle-bisector-theorem-extensions %}))**

![]({{ site.baseurl }}/assets/img/the-curious-case-of-the-equilateral-triangle-and-3-concentric-rings-or-the-hidden-angle-bisector/blogger_ed0b4b87.PNG)

That's particularly interesting here since via the angle bisector theorem  OB : OC** **is in a  2:1 ratio, BD : DC  is also 2:1  i.e.  \( \frac{2}{3} s \) and \( \frac{1}{3} s \).   In addition, via the cyclic quad triangle BOD is similar to ACD.

So \( \dfrac{DC}{AC} = \dfrac{OD}{OB} \)  

\( \dfrac{\frac{1}{3}s}{s} = \dfrac{OB}{2} \)

\( OD = \frac{2}{3}  \) and since all of \( OA = 3, DA = \frac{7}{3} \)

Now via the cyclic quad:  \( OD \cdot DA = BD \cdot  DC \)

\( \frac{14}{9} = \frac{2}{9} \cdot s^2   =>   s = \sqrt{7}\)  once again but without any trig or really much more work!

Alternative
For comparison here is a more analytic version which is more work but does have the nicety of giving coordinates for the final points:

Let  O be (0,0) and A be (0, -3) on the graph.  

- Then lets  add a vector s =  (a, b) to point A to get to C = (a, b -3).   The magnitude of that vector is the side length of the triangle  \( \sqrt{a^2 + b^2} \)
- We now need to rotate the vector 60 degrees to get to B or \( s' = ( \frac{1}{2}a - \frac{\sqrt{3}}{2}b, \frac{\sqrt{3}}{2}a + \frac{1}{2}b) \) 
- So B =  A + s' =  \( (\frac{1}{2}a - \frac{\sqrt{3}}{2}b, \frac{\sqrt{3}}{2}a + \frac{1}{2}b - 3) \) 
- Next  we get 2 equations from the distances from O for A and B

$$a^2 + (b-3)^2 = 1^2$$

$$(\frac{1}{2}a - \frac{\sqrt{3}}{2}b)^2 + (\frac{\sqrt{3}}{2}a + \frac{1}{2}b - 3)^2  = 2^2$$

- Focusing on the 2nd one:

$$(a- \sqrt{3}b)^2  + (\sqrt{3}a + b - 6)^2 = 16$$

$$a^2 + b^2 +5 = 3\sqrt{3}a + 3b$$

- Now substituting from the first equation \(a^2 + b^2 = 6b - 8 \) we get:

$$b = \sqrt{3}a + 1$$

- When plugged back into the first equation:   \(  (\sqrt{3}a -2)^2 + a^2 = 1 \) which factors to \( (2a - \sqrt{3})^2 = 1.\)  So \( a = \frac{\sqrt{3}}{2} \) and \( b =  \frac{5}{2} \). 
- Now reapply the magnitude formula \( ||s|| = \sqrt{ (\frac{\sqrt{3}}{2})^2 + (\frac{5}{2})^2 } = \sqrt{7} \)

![]({{ site.baseurl }}/assets/img/the-curious-case-of-the-equilateral-triangle-and-3-concentric-rings-or-the-hidden-angle-bisector/blogger_3b8a2688.png)

The coordinates of point B seemed suggestive of the unit circle. So I graphed them above and its easy to see the the ratio for the \( \frac{5}{3} \pi \) degree angle and point C is just a 2x scaled version of \( \frac{4}{3} \pi \)   This of course brings us full circle back to our observations on the angles via the cyclic quad.

