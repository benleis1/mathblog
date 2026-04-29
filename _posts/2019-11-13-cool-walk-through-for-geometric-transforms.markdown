---
title: "Cool walk through for geometric transforms"
date: 2019-11-13 04:41:00 +0000
tags:
  - digression
  - geometry
author: me
---

**[Since its AMC 8 today - here's a geometry walkthrough instead for the week]**

[@sansu_original]

![]({{ site.baseurl }}/assets/img/cool-walk-through-for-geometric-transforms/blogger_56d02b84.png)
Find the area of the quadrilateral:  EFGN

**Part 1 - Deal with triangle ENG**

1. I've added the diameter of the dodecagon AG and then note that connecting the center to 2 vertices like E and G or  A and C form an equilateral triangle.  So AC = CE = EG = OG = OA = r.  Where r is the radius of the dodecagon.

2. From the inscribed angle  \( \angle{CAE} = 30 \) and from internal arcs \( \angle{CNE} =  \dfrac{\overparen{CE} + \overparen{AL}}{2} = 45 \)

3. Dropping a perpendicular down at CM to build a 30-60 we get AC = r so \( CM = \dfrac{r}{2} \)    and \(AM = ME =  r \cdot \dfrac{\sqrt{3}}{2} \)  Since CNM is an isosceles right triangle \( MN = CM =  \dfrac{r}{2} \)

4.  We can now find the area of \( \triangle{ENG} \) in parts  ENG = NMG + MEG:

  \( \triangle{NMG} = \frac{1}{2}MN \cdot EG = \dfrac{r^2}{4} \)

  \( \triangle{MEG} = \frac{1}{2}ME \cdot EG = \dfrac{\sqrt{3} \cdot r^2}{4} \)

There are two things to note here.

- Since the area of the whole dodecagon is \( 3 \cdot r^2  \) one of the 12 wedges that make it up has area \( \dfrac{r^2}{4} \)   which is the same as NMG.
- The area of any of the equilateral triangles with a side length of radius r is \( \dfrac{\sqrt{3} \cdot r^2}{4} \) which is the same as MEG.

**Part 2: (Rearrange)**

![]({{ site.baseurl }}/assets/img/cool-walk-through-for-geometric-transforms/blogger_30900da4.png)

Its easy to show an equilateral triangle, wedge and edge triangle like EFG combine to a quarter 

of the whole dodecagon.

**So **\(  \triangle{NMG} + \triangle{MEG} + \triangle{EFG} = \dfrac{3}{4} r^2 \)

**Note:** Directly calculating EFG based on 15-75-90 side ratios we get \(  \frac{1}{2} \cdot r \cdot  \dfrac{2 - \sqrt{3}}{2} \cdot r  =  \dfrac{r^2}{2} - \dfrac{\sqrt{3}}{4} \cdot r^2 \)

And indeed: \( \dfrac{r^2}{4} + \dfrac{\sqrt{3}} {4} \cdot r^2 + \dfrac{r^2}{2} - \dfrac{\sqrt{3}}{4} \cdot r^2  = \dfrac{3}{4} r^2  \)

