---
title: "Pershan Geometry Walkthrough #2"
date: 2020-08-12 03:40:00 +0000
tags:
  - comparison
  - geometry
author: me
---

This is the continuation of a series from [First Post](https://blog.mathoffthegrid.com/2020/08/walkthrough-of-geometry-problem-from.html)  I'm following Michael along and capturing my problem solving process for comparison. To capture the process , I narrate as much as possible my thinking on the yellow pads I use, and just work down linearly without erasing anything,

This time among the problems he chose this one:

!![](https://i0.wp.com/notepad.michaelpershan.com/wp-content/uploads/2020/08/image-18-1024x477.png?resize=660%2C307&ssl=1)

![]({{ site.baseurl }}/assets/img/pershan-geometry-walkthrough-2/blogger_51fded45.jpg)

The first thing that came to mind was proving CT = CD was the same as showing triangle CTD is isosceles.  This transition from original statement to restatement gives another endpoint to aim for (along with showing the two angles CTD and CDT are congruent).

The next immediate observation was what was the midpoint doing in the problem. This wasn't immediately obvious but it was clearly the key to solving the problem somehow.  You can see below there that my immediate next instinct was to angle chase and also to think about adding a parallel line to leverage the midpoint.

I angle chased on the diagram and didn't immediately see any breakthroughs, In my working notation, values in brackets are goals vs non-bracketed values which are computed values. I didn't see any way to get to my bracket goals and I knew I hadn't used the midpoint so that wasn't too surprising.

![]({{ site.baseurl }}/assets/img/pershan-geometry-walkthrough-2/blogger_41c9b0d1.jpg)

Before moving on I want to characterize my instinctive reaction to the diagram at this stage. In short, I really didn't like the upper right corner. There's a non-symmetric pinching going on there as if the two parts don't go together.  I also still had a blank moment concerning how the midpoint related. So my next step was to ignore that corner and concentrate on leveraging the midpoint. The first obvious idea was to extend another diagonal and create the parallel to its midpoint (like above).   But that didn't add anything. I then just looked at all the other segments and started imagining what a midpoint would add. I had only considered the top next and then I had a sudden idea. 

The right angle was popping out at me again and I wondered if instead of adding midpoints, what if I extended AM to form another right triangle with point D?   That used the midpoint but in a different way than I originally had gone for because as you can see above: the new extension is a congruent triangle. That seemed really promising, so I angle chased in the diagram and then looking at the diagram I had a new goal can we show ABC is isosceles?  The angle chase wasn't even done to try this and I noticed a third thing: this was making me think of a circumcircle.

![]({{ site.baseurl }}/assets/img/pershan-geometry-walkthrough-2/blogger_754533bd.JPG)

As soon  as I did the drawing I was fairly sure I was done, everything fit and I just had to walk through the steps in the proper order.   In this understanding my original feeling about the corner is totally confirmed. The parallelogram is laid over the circle and that corner has two mostly unrelated things going on it.

Final Product

1. Extend MT to E so that EDT is also a right triangle. If circumscribed,  ED is the diameter of the circle due to the right angle.

2. From the parallel lines triangle EMC is at least similar to AMB but since its a midpoint: BM = CM and the two triangles are actual ASA congruent.

3. So segment CE = AB = CD.  Therefore C is actually the center of the circle.

4. By definition CT and CD are both radii and therefore congruent.

Since this is the same technique Michael wrote about wanting to leverage here: [Link](https://problemproblems.wordpress.com/2015/06/12/a-small-accomplishment/), I'll be very curious to go read now if that actually happened and he put his theory into practice.

[https://notepad.michaelpershan.com/geometry-journal-4/](https://notepad.michaelpershan.com/geometry-journal-4/)

Addendum: So Michael went a totally different way which is is fun too since it gets back to why I like geometry. There's real creativity involved. Or put another way the deep structure can be manifest in many often quite different ways.