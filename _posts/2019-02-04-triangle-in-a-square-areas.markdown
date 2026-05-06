---
title: "Triangle in a Square: Areas"
date: 2019-02-04 23:27:00 +0000
tags:
  - digression
  - geometry
author: me
---

So this happened today:

![]({{ site.baseurl }}/assets/img/triangle-in-a-square-areas/blogger_78a705db.jpg)

School was cancelled and my planning around another day working with combinatorics will have to be shelved.  

On the fun news front:

- The kids did great at MathCounts. The team came in 2nd place and will advance to States.
- AMC10 is coming up this week.

![]({{ site.baseurl }}/assets/img/triangle-in-a-square-areas/blogger_844b7937.jpg)

(Post contest Photo)

So I present a fun proof I had around from a few weeks ago:  

Process: This one riffs on a familiar setup for me (the equilateral triangle embedded in a square) So based on experience I already knew I should do the rearrangement coming below. It just remained to fool around with the areas a bit. Initially I came up with some awkward formulas based on tracing the 30-60-90s and just computing areas. The problem is that while it works you accumulate a fair number of squares root and scaled differences of them. At that point I decided to relook at the top quadrilateral and further divide it with some perpendiculars. Interesting and useful simplifications fell out as soon as I did it.

![]({{ site.baseurl }}/assets/img/triangle-in-a-square-areas/blogger_77242126.PNG)

**Given an equilateral triangle AEF embededd in a square ABCD,  prove the area of CEF = ADF + ABE**

 ![]({{ site.baseurl }}/assets/img/triangle-in-a-square-areas/blogger_790e1038.PNG)

Reorganize:
Rearrange the 3 triangles which all share a hypotenuse of the same length and rearrange them

as above to overlap. Doing an angle chase shows almost all the triangles are 30-60-90's.  (All the green congruent angles in the above picture are 30 degrees)  This is generally usually for all such problems with the equilateral triangle embedded in a square. [**Note: my drawing could have been a bit more pronounced calling out ADF and ABE are not congruent and do not have the same altitudes etc.] **

Area Math:

![]({{ site.baseurl }}/assets/img/triangle-in-a-square-areas/blogger_6e6eee15.PNG)

We want to find the area of CEF which is congruent to JC'K.  

- Let the area of JHK =  B,  
- the area of JD'H = JD'K - JHK =  $ A_1 - B $
- the area of KE'H = KE'J  - JHK = $ A_2  - B $

After adding the perpendiculars LH and MH we can show via ASA that GLH is congruent to JD'G and likewise HMN is congruent to HE'K  so

- JLH = JD'H =  $ A_1 - B $
- KMH = KHE' = $A_2 - B $

Note: The area of $ JHK = B = \frac{1}{2} JD' \cdot HK $  (altitude and base)

At the same time  area of the rectangle HLC'M = $ LH \cdot HM  $   LH is congruent to JD' from above and $ HM = \frac{1}{2} HK $ from the 30-60-90 HKM so in fact HLC'M has the same area as JHK = B!

Adding these parts all together:  CEF which is congruent to JC'K which is equal

to JD'H + KE'H + JHK + HLC'M =  $A_1 - B  + A_2 - B  + B + B = A_1 + A_2 $