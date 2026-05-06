---
title: "President's Day Break Geometry"
date: 2016-02-12 19:47:00 +0000
tags:
  - digression
  - geometry
author: me
---

There's no school on Tuesday for President's day and therefore no Math Club. If I had realized this more fully I would have perhaps picked an extra problem of the week last time. In the meantime I saw this really interesting article on The Atlantic about extracurricular Math: [http://www.theatlantic.com/magazine/archive/2016/03/the-math-revolution/426855/](http://www.theatlantic.com/magazine/archive/2016/03/the-math-revolution/426855/)  Leading an after school Math Club, I think I sit squarely in the middle of this movement such as it is. It's probably telling that I also recognize every organization mentioned.   The article ends with the hope that Gifted and Talent programs will bring deeper Mathematics into the school. I'm a bit skeptical of this premise. I definitely want to see improvements in the curriculum but I'm unsure how they can be achieved. Even our relatively shallow sequences are a struggle to cram into the year right now if you want to bring entire classrooms along (even if they are full of gifted students). For some more interesting discussion check out: [http://mathbabe.org/2016/02/09/how-do-we-make-math-enrichment-less-elitist/](http://mathbabe.org/2016/02/09/how-do-we-make-math-enrichment-less-elitist/)  I'd settle for just knowing how to make sure the Math Club continues beyond me let alone spreading to other schools. However, some of the efforts mentioned in the comments are very inspiring.

With less prep work to do, I focused on another interesting geometry puzzle from @five_triangles. Again my aim with these posts is to explore the problem solving process and how one can experiment towards the proper approach.

![]({{ site.baseurl }}/assets/img/presidents-day-break-geometry/blogger_c160f18c.jpg)

My first thought on glancing at this one was the 1:2 ratios of interior line DE make me think of a [Centroid](https://en.wikipedia.org/wiki/Centroid). This is probably due to the recent numberphile video on the [Euler Line](https://en.wikipedia.org/wiki/Euler_line) that I watched with my son:  [https://www.youtube.com/watch?v=wVH4MS6v23U](https://www.youtube.com/watch?v=wVH4MS6v23U)  But it clearly wasn't quite a centroid yet and I thought maybe if I extended a parallel around there something my fall out.  That made me think of adding a parallel line on the bottom to DE so that there were similar triangles.  That also seemed interesting and I decided to explore it first.

![]({{ site.baseurl }}/assets/img/presidents-day-break-geometry/blogger_67d0fbec.jpg)

Some ratios fallout fairly quickly. The new segments must be 2:3:1 to satisfy the original ratios and the 1:2 ratio needed in the similar triangle. Likewise you can show based on the other parallel lines that the smaller similar triangle has a single in ratio 1/3:1  to the large one. So this creates a lower triangle with edges 3x larger than the top one. But that seemed to be about all that was to be had here. I needed a breakdown of the triangle along AG.

[**Note: I was a little sloppy and inconsistently labelled a few points between diagrams.]**

So when I came home from work last night I picked up my original idea. DE is not the centroid of the ABC but if you divide up AB into 3 equal segments it is the centroid of the resulting triangle AHE.

![]({{ site.baseurl }}/assets/img/presidents-day-break-geometry/blogger_ea04d472.jpg)

You can then start by assigning an area A to ADF and find the areas of all the other pieces of this triangle relative to A via the ration of the interior  segments. For example since DF:FE is 1:2 triangle AFE has an area of 2A. In the lowest diagram I include the fact that since its a centroid there are intersections with the medians on all 3 sides and each segment is in a 1:2 ratio.  So our entire triangle AHE has an area of 6A.

From this point you can use various scaling ratios in the interior triangles to find more areas. My first two breakdowns were dead ends. Example:

![]({{ site.baseurl }}/assets/img/presidents-day-break-geometry/blogger_ae711d47.jpg)

I finally decided I really wanted to find the area in the reverse triangle on the bottom DEG instead. That's convenient since its base is a median so the area of DHG = HEG. And at this point I also realized that breaking up  the segment AB was useful so I also did the same for AC.

![]({{ site.baseurl }}/assets/img/presidents-day-break-geometry/blogger_99f40c23.jpg)

I ended up assigning another variable X  for the area of these two triangles. At first I thought I might need to solve for X. That's doable by breaking up the big triangle differently to find its total area in terms of  A and then assembling the pieces. But I suspected that the X's might cancel out so I decided to directly check the ratio.  You can find ABG and AGC by scaling ADG and AEG.  Sure enough the ratios are pretty and both A and X cancel leaving the fraction 3/5!  What's also interesting to note is how the inner core ADG and AGE of the triangle have equal areas its only the scaled outer ones that produce the final ratio.

A cleaned up version without even the centroid.
On reflection the construction works even cutting out a few steps.

![]({{ site.baseurl }}/assets/img/presidents-day-break-geometry/blogger_60b36148.jpg)

Todo: add [Mass Point Geometry](https://en.wikipedia.org/wiki/Mass_point_geometry) solution which is a cool extension.

Could I give this out?

So this was originally advertised as Y6 which is within range but our curriculum doesn't cover triangle scaling as far as I can tell at this point. Its not a particularly hard point to teach beforehand although again the basic triangle formula can be a little weak given the de-emphasis of geometry. 

So let's assume I did that much prep, I think I would only provide it with the auxiliary lines filled in. That more than anything is what separates High School from Middle School problems for me. Even then there is the algebraic  expression in 2 terms to simplify and the need to scale several different triangles.  All told I would probably need to provide sub steps to do and it would still be a hard lift. So I think I'll leave this one for HS where it makes a very interesting exercise especially if you covered the mass point method after solving it conventionally.