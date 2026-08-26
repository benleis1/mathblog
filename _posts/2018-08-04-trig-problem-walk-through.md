---
title: "Trig Problem Walk Through"
date: 2018-08-04 04:31:00 +0000
author: me
---

John Rowe posted the fun puzzle pictured above on twitter.  The goal is to find x. 

One reasonable brute force approach is to start with lower part of the diagram and apply trigonometry to find various angles and sides and work your way up until you arrive at x.

Solution to the [#trigonometry](https://twitter.com/hashtag/trigonometry?src=hash&ref_src=twsrc%5Etfw) problem I put out a few hours ago. [#MTBoS](https://twitter.com/hashtag/MTBoS?src=hash&ref_src=twsrc%5Etfw) [#iTeachMath](https://twitter.com/hashtag/iTeachMath?src=hash&ref_src=twsrc%5Etfw) [https://t.co/ZyLzgkoRj7](https://t.co/ZyLzgkoRj7) [pic.twitter.com/w6WYyCZJEf](https://t.co/w6WYyCZJEf)
— John Rowe 👨🏽‍🚀 (@MrJohnRowe) [August 2, 2018](https://twitter.com/MrJohnRowe/status/1024850753477693440?ref_src=twsrc%5Etfw)

![]({{ site.baseurl }}/assets/img/trig-problem-walk-through/blogger_41018144.png)

**This looks a bit more complex than it really is but its a lot of steady work.  **So I immediately thought it might be possible to apply synthetic techniques and save some work.

The actual process I went through
1. Angle Chase

2. Look at all similar triangles (and extend to make one more at the top).  This made finding all the of the 22.5-67.5-90 triangles a bit easier.

![]({{ site.baseurl }}/assets/img/trig-problem-walk-through/blogger_e5dedced.PNG)

Note split between the top and bottom. You need to start angle chasing near the bottom middle and the work counter clockwise but once its done the rest of the problem only needs the top part of the diagram to be solved. The lower 6x6 isosceles triangle is superfluous.

False start: I thought I had found more congruent triangles than there really were and after testing I realized something was bogus.  So I went back and realized there was only one angle bisector indicated on the diagram while I had assumed there were 3 for some reason.

3. I then noticed the similar triangles at the top. From them I could find the ratio for base of the desired triangle and apply trig. I did this like below but found an easier way later on from online.

![]({{ site.baseurl }}/assets/img/trig-problem-walk-through/blogger_6779df49.PNG)

4. Discover all the hidden 45-45-90 triangle and draw them in.

(Total Time: 1 day a burst before work and then a refinement when going to bed. As usual a bit of incubation often helps)

Final Method

![]({{ site.baseurl }}/assets/img/trig-problem-walk-through/blogger_341991b3.png)

First always start by angle chasing.  After doing so I noticed the large number of 22.5-67.5-90 triangles as highlighted above. 

The second thing to notice (although this is not the order I did it in is all the explicit and implicit 45-45-90 triangles. In particular x lies on OE which is at a 45 angle. 

What this means is that all the interesting information is actually in the upper left hand corner:

![]({{ site.baseurl }}/assets/img/trig-problem-walk-through/blogger_c284c69b.png)

Here I've blown up and squared off the top right corner. In addition I've added replaced one diagonal line with some horizontal and vertical ones to highlight another small right isosceles triangle.

What this shows is:

- The total length on the side is 10 so IJ = HI - HJ = 10 - 6  = 4.
- The two lower triangles AEJ and AJI are congruent by SAS and therefore EJ is 4 as well.  You could stop right here and use trigonometry to find x.   $ \frac{4}{x} = \tan{\frac{\pi}{8}} $
- We can use basic special triangle properties to find AE by just working our way around the square from EF to FG to AC to AE.

![]({{ site.baseurl }}/assets/img/trig-problem-walk-through/blogger_607c94c1.png)

QED!

Final Note: My original mistake actually lend itself to a related but interesting problem. If the top triangles are congruent then the 67.5 angle is actually trisected. The key difference is there is no perpendicular angle at E and the two lower angles are congruent instead.

![]({{ site.baseurl }}/assets/img/trig-problem-walk-through/blogger_e95135e3.PNG)