---
title: "Everything is Connected (yet again)"
date: 2020-08-08 03:36:00 +0000
tags:
  - 3-4-5
  - digression
  - geometry
author: me
---

The other week I was checking out the geometric puzzles at [https://sciencevsmagic.net/geo/](https://sciencevsmagic.net/geo/) as part of a MathsJam evening.  A small part of the process requires one to trisect a line into three equal parts, As part of the group discussion of this, I volunteered the first method that came to mind:

![]({{ site.baseurl }}/assets/img/everything-is-connected-yet-again/blogger_c6f28e17.JPG)

If you take a square and connect the bisectors on two sides as shown above, the diagonal (in blue) is cut into three equal parts.

Its been a long time since I first saw and solved this but on retrying what I see and probably is similar to the first time around is that the 2 triangles ADH and CBG are congruent. From this general symmetry there are a bunch of ways to show DI and BJ are congruent.

Then its onto the trickier center piece IJ.  That can be done several ways. I'll do it by computing the actual segment lengths for contrast with later on:

![]({{ site.baseurl }}/assets/img/everything-is-connected-yet-again/blogger_5b6561d1.JPG)

At the Mathjam, I didn't even review why it was true, went on and didn't think anything more of it but then today someone asked online and Vincent Pantaloni shared a bunch of different ways to do this:

I became interested in one of the earlier versions because its so similar to what I usually turn to:

via Catriona Shearer

Presented as a construction like above it doesn't look very similar to my method but when you put them together this is what you get:

![]({{ site.baseurl }}/assets/img/everything-is-connected-yet-again/blogger_d30b4157.JPG)

As you can see the two methods differ only by AF vs CG which intersect at J (that has to happen since they both find the trisection).   Having more lines actually reveals more relationships in this case.   Each of the lines that intersects at J is a median of the triangle ABC: it is in fact the centroid!

![]({{ site.baseurl }}/assets/img/everything-is-connected-yet-again/blogger_d2fd0500.JPG)

From the centroid we know J divides KB into a 1:2 ratio. The same construction can done on the other side with ADC showing I also divides DK into the same 1:2 ratio. From there we're done again.  (Or alternatively you could start from the trisection and derive the fact that the centroid ratios are always 1:2)

But this begs the question if adding more lines reveals more relations what if we maximize the symmetry?

![]({{ site.baseurl }}/assets/img/everything-is-connected-yet-again/blogger_d244fcbf.JPG)

Out comes a rather classic Islamic tiling pattern. 

I've constructed these with the kids in Math Club but I've never had them go through looking for all the various ratios embedded within them. A bunch of basic ratios are embedded within the tile beyond 1/3 and it really would be fun to spend some time on this as a Math Circle activity. As a bonus I've highlighted the orange segment above which is 1/5 of  BE. 

But lets return to Vincent's video.  The image on the upper left hints at a general method for dividing any segment into n equal segments based on  similar triangles:

via Bowman Dickson

Basically construct a segment of any length at an angle connected to the line you want to divide. Then extend it n times (if you're using a compass - this is done with circles).  Connect the far end to make a triangle and then just add the parallel lines which will divide the original segment via the constant dilations of the triangles.

![]({{ site.baseurl }}/assets/img/everything-is-connected-yet-again/blogger_e30f2f06.JPG)

So in the end this is my preferred proof for the problem:

- Add the parallel DK to AH and GC.   (I added one on the other side for symmetry)
- This creates 3 similar triangles that are all dilations of each other.  BDK, BIA and BJG,
- The new triangle AKD is congruent to the AHD etc from the parallel lines and sharing an edge  (SAS) so AK is congruent to AG and BG,
- Finally the parallels cut the diagonal BD into thirds as well. (via similarity)

And the reason why I like it the best despite it being a bit complicated to construct is that it follows the general method for dividing into n equal parts and treats the special case here in the same way you'd do it more generally.

3-4-5 Bonus

Let's return to the middle drawing:

![]({{ site.baseurl }}/assets/img/everything-is-connected-yet-again/blogger_897369e1.JPG)

I've posted before about the link between 1:2 triangles and 3:4:5 right triangles. See: [Older Post](https://blog.mathoffthegrid.com/2016/10/12-triangles-and-their-link-to.html) 

If you look closely above you'll see ADH is a 1:2 triangle and ADC is a right isosceles.  So what about the angle HAC in the middle?

**arctan(1/2) + arctan(1/3) = pi /4**

So the missing angle HAC must be arctan(1/3) and if you connected FH you'd construct two 1:3 ratio triangles.  

Do you see the hidden 3:4:5 triangle yet? Hint 2 1:3 or 2 1:2 angles and you're half way there.

![]({{ site.baseurl }}/assets/img/everything-is-connected-yet-again/blogger_a5eed8b7.JPG)