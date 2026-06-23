---
title: "Focal chords in a parabola"
date: 2026-06-23
tags: [parabola, directrix, focus]
author: me
math: true
---
# Intro
The following problem came up on reddit:

> Show that the lines tangent to the parabola at the ends of a focal chord intersect at right angles.
	
This has a nice proof based on the groundwork from [post]({% post_url 2026-05-11-parabola-reflection %}){:width="60%"}

# Setup
Everything that follows will build on the fact the tangents to a point on a parabola lie on the perpendicular bisector of the segment from the focus to the perpendicular with the directrix shown in the previous post.

So to start let's graph out the basic layout.

![]({{ site.baseurl }}/assets/img/parabola-chord/setup.png )

* We have a chord AB that goes through the focus at F.
* I've added in the segments DF and CF from the focus to the perpendiculars and the perpendicular bisectors of both segments which are the respective tangents to A and B.
* Also from the definition of a parabola, AF = AD and BF = DC.

# Initial angle chase

Since the perpendicular BC and AD are parallel, the red angles at A and B are congruent. Let's set that angle to x.
* Then FBC = 180 - x and since FBC is isosceles, BFC = BCF = 90 - x/2.
* Likewise  FAD is isosceles and FDA = ADF = x/2.

That implies BFC and AFD are complementary and the remaining angle at that point CFD is a right angle.


![]({{ site.baseurl }}/assets/img/parabola-chord/step1.png ){:width="60%"}

# Completion

* Point O is where the perpendicular bisector OA intersects the directrix. By  definition its equidistant from F and D so FO = DO.
* We can now angle chase the triangle CFO. Let OFD = ODF =  y, then CFO = 90 - y, and FOC = 2y so the remaining angle in the triangle FCO must be 90 - y as well. 
* CFO is therefore also isosceles and CO = FO = DO.  Another way of thinking about this is FCD defines a circle centered at O because its a right triangles and CO, FO, and DO are all radii.
* We now go the other way around because CO = OF it must lie on the perpendicular bisector of CF i.e. O is the intersection of both bisectors.
* Finally because of all the right angles CF is parallel to OA, and BO is parallel to FD. Since three of the four angles on our parallelogram are right angles the fourth one at angle AOB is also a right angle. QED


![]({{ site.baseurl }}/assets/img/parabola-chord/final.png ){:width=60%"}










