---
title: "Angle bisector"
date: 2017-08-01 03:55:00 +0000
tags:
  - digression
  - geometry
author: me
---

I've officially reached the point of the Summer where I'm missing interacting with kids besides my own.  In the meantime, this is another geometry walk-through of a problem from [Cut The Knot](https://t.co/qnNhNCNbQc) this time. It's a  good example of trying different ideas to utilize angle bisectors.  Plus, if you haven't checked out this site, its well worth the time.

![]({{ site.baseurl }}/assets/img/angle-bisector/blogger_8f29b5d2.jpg)

Easy Observations

To start off as always I took a look at the drawing and went with my instincts: that really looks like AZ is bisecting BAD and is 30 degrees.  I was so sure, I didn't even try modelling to confirm that impression before moving on.

The second observation I made was that BI was also the angle bisector of angle B since it intersected the other 2 bisectors at point I (the incenter).

Next I went through the obvious angle chasing. Initially I assigned a to the 2 bisectors of angle B and b to the 2 bisectors of angle C. So 2a + 2b = 60.  After walking through this for a while, I realized that it was a lot more convenient to let b = 30 - a and only use one variable.  The one interesting thing that popped out was EIB was 30 degrees. What I really wanted next was angle CDE or BZD and those were not deducible yet.

Initial Targets
From there I noticed if DAZ was 30 that AEZI would be a cyclic quadrilateral. So I needed to somehow show that was the case. Nothing immediately came to though for finding more angles or side lengths to do that.

I like to walk backwards from the angles sometimes to find more patterns. This showed CED was also 30 degrees and triangle EIZ was isosceles. If I could get to that point I would also be closer. But yet again I didn't see a connection to make.

Some Experiments

I picked this up again a day later, and tried a couple of experiments with the angle bisector. First, I thought it might be easier to manipulate if I extended the triangle to make it isosceles AD would extend to be a perpendicular bisector.

![]({{ site.baseurl }}/assets/img/angle-bisector/blogger_a282ed5c.png)

This produced some more semi-interesting angle in the new portion but no similar triangles or such and didn't seem helpful.

Then I decided to instead increase symmetry by mirroring on the right with an explicit angle bisector:

![]({{ site.baseurl }}/assets/img/angle-bisector/blogger_ced61780.png)

My hope was that I could prove the right and left similar and thus show the left was also a bisector.  It was easy starting with the bisector to show the right hand side was  a cyclic quad and it was noticeable that the combined isosceles triangle would form a larger cyclic quad but again I didn't quite see how to connect all of this. It also needed to be shown that the bisector on the right really intersected the other lines at the same point.

I then thought about creating multiple equilateral triangles through extension. This seemed interesting since there would then be a giant parallelogram. Again, it was interesting but there was not much I could do with this. I added the diagonals in which intersect at right angles but even that didn't give me new ways to solve the problem.

![]({{ site.baseurl }}/assets/img/angle-bisector/blogger_834c829d.png)

Breakthrough

I stopped experimenting but then while trying to go to sleep I thought of a new angle.  Point Z was also the incenter of the smaller triangle ABD if I could prove that DE was an angle bisector I would have a way forward. That was attractive because I could use the angle bisector theorem. I just needed to show  BD and AD were in the same ratio as AC and BC. 

Since those two segments weren't adjacent I trying picturing ways to move them closer. By overlaying them or adding reflections. Eventually I settled on reflecting AD over to intersect AC and immediately I got excited. When that happened I formed a new equilateral triangle and a parallel line (DF) and similar triangles (ABC and CDF).  From there I could pretty much see the way forward:

Final workup as transcribed by @CutTheKnotMath (Which is a lot prettier than my sketch)

Draw DF∥AB. By the [Exterior Angle Theorem](http://www.cut-the-knot.org/fta/Eat/EAT.shtml), ∠AFD=∠FDC+∠FCD=∠ABC+∠FCD=60∘, making ΔADF equilateral. In particular, AF=AD.

By the Internal Angle Bisector theorem, AEBE=ACBC.

By the [Thales' theorem](http://www.cut-the-knot.org/Curriculum/Geometry/GeoGebra/ThalesTheorem.shtml), BDBC=AFAC=ADAC, i.e., ADBD=ACBC, implying ADBD=AEBE.

By the converse of the Internal Angle Theorem, DE is an angle bisector in ΔABD and so is AZ. Thus ∠DAZ=30∘.

So this took in all 3 separate 20 minute sessions over 2-3 days with several dead ends as is often the case for me with trickier problems.  What also seems to be the true is that experiments tend to deepen my understanding of the construction. So while they aren't always fruitful they lead the way towards the eventual productive ideas.

Trigonometric Technique

What's also fascinating is looking on the site at the other solution. First it would not have occurred to me to use Stewart's  [theorem](https://en.wikipedia.org/wiki/Stewart%27s_theorem).  So an interesting technique to remember for future use. But also new to me was the variant here:

$$AD = \frac{2bc \cos(\frac{A}{2})}{b +c}$$

I found a good explanation here: [https://annoyingpi.wordpress.com/2010/04/14/angle-bisectors/](https://annoyingpi.wordpress.com/2010/04/14/angle-bisectors/). Basically if you use the law of cosines to find the area of the subtriangles ABD and ACD as well as ABC and simplify this form pops out.  If you think to go this way, it avoids the need for auxiliary lines (as often happens when trig is introduced). 

I'm particularly proud of this effort because my solution was added to the site. Now I just need to start working so that I can tackle some of the hairier inequalities problems discussed there.

![]({{ site.baseurl }}/assets/img/angle-bisector/blogger_bac27423.png)