---
title: "Interesting Geometry Walkthrough: Inscribed trapezoids/hexagons"
date: 2018-12-13 22:08:00 +0000
tags:
  - digression
  - geometry
author: me
---

!![](https://pbs.twimg.com/media/DtzVgyrWkAAWi23.jpg)

I really like this problem and spent several days experimenting with it. 

Abbreviated Process:

Angle Chase

Trapezoid experiments

Extend to triangles

Notice 120 degree angle

Find an expression for r

Notice the equilateral triangles

Realize Ptolemy could be used

Simplify with Mustafa Eskici's observation about similar triangles

Basically my process looks like this: I draw and redraw the figure and experiment with adding auxiliary lines/look for interesting observations. This time around I was particularly attracted to the trapezoids and almost immediately starting playing with diagonals. I also knew if I could find enough sides I could Ptolemy's Formula to find a diagonal the trick was deriving all the other sides.   Also I play around with geogebra models a bit so I knew several facts before I proved them: like the one diagonal being 21 which I didn't rationalize until a day later.  The whole exercise takes some time for me at least and I usually refrain from looking for solutions I've given it at least several days. Its amazing how much more productive thinking about a problem over several days can be vs a single attempt. I almost always find new things to explore even if they're dead ends.

**Step 1: Angle Chase**

![]({{ site.baseurl }}/assets/img/interesting-geometry-walkthrough-inscribed-trapezoidshexagons/blogger_4258d50c.png)

3 big arcs + 3 little arcs = 360 degrees so 1 big arc + 1 little arc = 120.  This  means that the interior angles like: $ \angle{EOC} = 120 $

Alternative:

Starting with the lower trapezoid ABCD which is also a cyclic quad.   Let $ \angle{ACD} = x $

Then $ \angle{ACD} =  \angle{CBD} = \angle{DBA} = x $ and you eventually arrive at $ \angle{BCA} = 180 - 3x $

This implies $ \angle{BOC} = 2x $ and  $\angle{BOA} = 360 - 6x $

Since this is trisected each one one of the top angles for example $ \angle{BOE} = 120 -2x $

And finally that means adding the smaller to larger arcs you get an 120 degree angle i.e. $ \angle{EOC} = 120 $

**Step 2: Diagonals**

**![]({{ site.baseurl }}/assets/img/interesting-geometry-walkthrough-inscribed-trapezoidshexagons/blogger_de623898.png)**

Now Connect CF and ED.   Since angles EFC, FED, DCF and CDE all inscribe a pair of arcs from above they all are 60 degree angles and we have formed 2 equilateral triangles.  The diagonals ED and CF must thus be 14 + 7 = 21.

**Step 3: Similar triangles.**

Note originally I used Ptolemy's Law 3 times in a row here but the similar triangles are much nicer.

![]({{ site.baseurl }}/assets/img/interesting-geometry-walkthrough-inscribed-trapezoidshexagons/blogger_4ea56ce2.png)

Now let's look at triangle CBE which as has a 2:1 ratio for side CB:BE. It turns out looking at red/green angle pairs that its similar to triangle BEP, CPF, ACN and FBN.

![]({{ site.baseurl }}/assets/img/interesting-geometry-walkthrough-inscribed-trapezoidshexagons/blogger_27df95e2.png)

That's convenient because we know the ratios of the triangle BEP and CPF are 3:1 since BE = 7 and CF = 21.  So let  a = EP then BP = 2a,  CP = 6a  and PF = 3a.   That means CE in the original triangle is 7a and its ratios are   14:7:7a

![]({{ site.baseurl }}/assets/img/interesting-geometry-walkthrough-inscribed-trapezoidshexagons/blogger_df02b2c0.png)

Now we can finally look at the other pair of similar triangles: FBN and ACN. 

BF  = 2a + 3a = 5a.  So the whole triangle is scaled 5/7  to CBE  and FN = 5, BN = 10

Then CN = 21 - FN = 16   and we again see it must be scaled 16/14 to CBE so AN = 8.

Adding the parts together AB = BN + AN = 10 + 8 = 18

Extras found along the way:

- Angle CBE is actually 120 degrees too since its half the remaining 240 degree arc it inscribes.
- That opens up the law of cosines for finding CE if you prefer.
- Its easy to show the diagonal CE is also  $ r\sqrt{3} $ where r is the radius of the circle.
- Quick sketch of my original thinking using Ptolemy rather than similar triangles and following the diagonals through 3 cyclic quads to the result:.  (Note: in my notes I wrote down the radius in the middle  actually $ S = 7\sqrt{7} $ )

![]({{ site.baseurl }}/assets/img/interesting-geometry-walkthrough-inscribed-trapezoidshexagons/blogger_c84f11c0.jpg)

