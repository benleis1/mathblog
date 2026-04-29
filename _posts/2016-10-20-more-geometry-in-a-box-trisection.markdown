---
title: "More Geometry in a Box (Trisection)"
date: 2016-10-20 16:21:00 +0000
tags:
  - geometry
  - digression
author: me
---

Continuing an occasional topic, I saw another great simple box construction.

[Prev post in this series: [http://mymathclub.blogspot.com/2016/08/another-fundamental-square-construction.html](http://mymathclub.blogspot.com/2016/08/another-fundamental-square-construction.html)]

As always what  I like about these is both the complexity hidden in relatively simple constructions and the interesting, often surprising relationships that fall out.

This one started:

![]({{ site.baseurl }}/assets/img/more-geometry-in-a-box-trisection/blogger_74ca0595.jpg)

Given M and N are medians, find the ratio of the area of triangle DKL to the area of rectangle ABCD.

![]({{ site.baseurl }}/assets/img/more-geometry-in-a-box-trisection/blogger_d5e8d95a.jpg)

Initially I was looking for similar triangles and decided to add a parallel line in the middle DKL. That splits it into two triangles that are similar to larger ones CLN and BDN. Interestingly not only are the two sets similar but they are similar in the same proportion since both sets have the same length sides.

CN = NB since its a median and the new line is the base for both new triangles 1 and 2.

This approach works, you can use the similarity to setup a equation and derive the proportion but it didn't feel elegant at the time.

**As it turns out there is a better way and it reveals cool fundamentals that were obscured above.**

My second approach was to try to create a single similar triangle rather than two. So I added in the parallel line AN.  This creates DNO which is similar to to DKL.

![]({{ site.baseurl }}/assets/img/more-geometry-in-a-box-trisection/blogger_1017447b.jpg)

But just adding this line now starts to reveal some more interesting facts. To start from the symmetry its very easy to show triangle DKM is congruent to its reflection BNO.    That implies BO = DK,

But even more interesting DKM is similar to ADO. That implies that K is the middle of DO since  M is the middle of DA. In other words, this construction has **trisected the line DB.**

(Note given the symmetry you could also show O is the middle of KB using the triangle BCK)

![]({{ site.baseurl }}/assets/img/more-geometry-in-a-box-trisection/blogger_944f4f2c.jpg)

You can now use triangle proportions to quickly solve the problem. Triangle BDN is 1/4 of the rectangle. Triangle DNO is 2/3 of triangle BDN since its base DO is 2/3 of DB. And triangle DKL is 1/4 of DNO since its a similar triangle scaled 1:2.   

So Triangle DKL is 1/24 of the entire rectangle.   But more importantly its not just a coincidence that we started with only medians/dissections and ended with ratio that contains a multiple of 3!