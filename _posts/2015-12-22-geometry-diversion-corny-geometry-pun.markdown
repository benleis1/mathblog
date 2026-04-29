---
title: "Geometry Diversion / corny geometry pun."
date: 2015-12-22 21:08:00 +0000
tags:
  - geometry
author: me
---

[](https://blogger.googleusercontent.com/img/proxy/AVvXsEgPgXksiZCbttG33WOzISgxJx-EnZrBWycp9kY3QFiu8xWoCwpBwCc91Mc6zew7HdE4WljtUQnA4FKdFzjRDgB6vk0EXc67Wi4dmymFfu2xHe0XnHRNWfo-aJUFFaf7AeAEy3tbCmfYOyKBOwcEKf1zZekpfpU=s0-d-e1-ft)

![]({{ site.baseurl }}/assets/img/geometry-diversion-corny-geometry-pun/blogger_99201c51.PNG)
**[Reconstructed Problem]**

I was looking at this one from @five_triangles on twitter and had an interesting search process to find the solution which is worth documenting. All told I probably thought about this over 3 days working 20 minutes each time I came back to it. At points I felt stuck and briefly comforted myself by thinking if I don't get this in a week I'll post for help on stack exchange. What kept me going was the knowledge that finding your own solution is way more valuable as is persisting with  problems that are not immediately obvious. Additionally, I think this shows a good example of using tools to help point a way towards a solution.

My first impression on looking at it was that the interior triangle is a Pythagorean triple and thus the angle $\angle HbHcHa$ is a right angle.  That implies the area of the inner triangle is $\frac{1}{2} \times 9 \times 12 = 54$.  That immediately sent me down an area based solution. I was particularly reminded of the problem from last year : [http://blog.mathoffthegrid.com/2015/04/simplifying-proof.html](http://blog.mathoffthegrid.com/2015/04/simplifying-proof.html).  This time however there were line lengths rather than sub areas.

Nonetheless I divided the triangle into a box with four quadrants and started to play with relationships.  There were an obvious 3 Pythagorean theorem relationships on the outer box to work with plus the relation between the inner triangle and the box.

This seemed fruitful at first despite the messy squares roots:

![]({{ site.baseurl }}/assets/img/geometry-diversion-corny-geometry-pun/blogger_acba6e2f.jpg)

The key realization from above is that $\overline {AB}$ is the sum of the 2 sides of the box i.e. a + b + c + d and that the 2 smaller triangles are both also isosceles right triangles. 

In other words this is a geometric interpretation of $(x +y)^2 = x^2 + 2xy + y^2$ where after multiplying by 1/2 you arrive at $\frac{1}{2}(x+y)^2 = \frac{1}{2}x^2 + xy + \frac{1}{2}y^2$

or in terms of shapes the big triangle is equal to the upper isosceles right triangle + the rectangle + the lower isosceles right triangle.

I even found a few tantalizing areas:

![]({{ site.baseurl }}/assets/img/geometry-diversion-corny-geometry-pun/blogger_cd61c339.jpg)

But I was ultimately looking for the area of the entire inner box or some variant of an expression that looked like the side squared and I was stuck at that point.

At this point  I also played around  a little in Geogebra to get a sense of what I was aiming for. A triangle of side length 24 seemed to be about right.

I was trying to fall asleep the next evening when two ideas occurred to me in succession.

1. What if you just rotated the inner triangle on its vertex $Hc$?   The left side would be a bit longer than $\overline{AHc}$ and the right a bit shorter than $\overline{AHb}$. Perhaps the two differences would cancel each other out. This would leave the length at 21 which was a bit short but I drew a model and checked it first before ruling it out.

![]({{ site.baseurl }}/assets/img/geometry-diversion-corny-geometry-pun/blogger_66a9d1fa.jpg)

2.  However, that made me also reconsider the original two outer triangles. They are clearly similar because $\angle HbHcHa$ is a right angle.

![]({{ site.baseurl }}/assets/img/geometry-diversion-corny-geometry-pun/blogger_32091b60.jpg)

Since I was looking for a cutesy solution I wondering what if they were also similar to the interior triangle. If that was the case then they were also 3-4-5 variants which I could find the lengths for immediately. I checked the resulting length for side $\overline{AB} = \overline{AHb} + \overline{HbE} + \overline{EHa}$.  This worked out to *exactly *24.  I was about to celebrate when I looked more closely and decided to verify the center point P was at a right angle to the hypotenuse of the outer triangle as required. **Nope: **even visual inspection showed issues.  This did however make me think about that key last relationship again. The line $\overline{PHa}$ actually forms another right isosceles triangle and its height is equal to its length.

![]({{ site.baseurl }}/assets/img/geometry-diversion-corny-geometry-pun/blogger_66dbf637.jpg)

So its easy to check  if $\overline{AD} - \overline{HbA} = \overline{HcE}$.  At which point I realized I had the solution.  I redrew the following diagram:

![]({{ site.baseurl }}/assets/img/geometry-diversion-corny-geometry-pun/blogger_cf3e4379.jpg)

The 2 triangles are similar and the left one is a 3/4 scaled version of the right one.  So if

I let the y be the height of the right triangle and x its length.    The smaller triangle's height is 3/4 x and its length is 3/4 y (note the inversion since its flipped).

That means the following two relations needed to be solved:

1. The Pythagorean relationship: $12^2 = x^2 + y^2$

2. The length of $\overline{PHa}$ is the hypotenuse of a 45-45-90 and

    $y -  \frac{3}{4}x = x$

Combining those two and you get $x = \frac{48}{65}\sqrt{65}$ and the whole length is $3 \sqrt{65}$ or ~24.

I still had a moment of doubt because I did not expect an irrational number so I double checked exactly in geogebra and sure enough it worked.

![]({{ site.baseurl }}/assets/img/geometry-diversion-corny-geometry-pun/blogger_b71faa3f.png)

I think  the author liked the fact that answer eludes to 365 days in the year but I would reframe to ask for  the area of the outer triangle to remove the pesky square root myself.