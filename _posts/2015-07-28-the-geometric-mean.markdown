---
title: "The Geometric Mean"
date: 2015-07-28 00:16:00 +0000
tags:
  - geometry
author: me
---

I've been thinking a bit about the [geometric mean](https://en.wikipedia.org/wiki/Geometric_mean) this week after it turned up in two separate 

problems I've been looking at. In the first which is fairly simple given 2 circles that are tangent to each other the segment from the their intersection to the tangents on the sides is equal to the geometric mean of their radii i.e. $\overline{CD} = \sqrt{\overline{CB} * \overline{AC}}$.  **Hint: it helps that triangle ADB is a right triangle.**

![]({{ site.baseurl }}/assets/img/the-geometric-mean/blogger_f77b71f1.png)

In the second there is a triangle with an altitude that has two more perpendicular segments drawn from the other sides to it (point D) and then 3 inscribed circles are added in.  Again the middle circle's radius is the geometric mean of the other two.  $\overline{MN} = \sqrt{\overline{KL} * \overline{HI}}$. **This figure has a lot of similar triangles.**

![]({{ site.baseurl }}/assets/img/the-geometric-mean/blogger_de0f15cb.png)I can prove both problems separately but it seems like they are connected and I don't yet see how to do so.

Further Riff

[http://blog.ifem.co.uk/am-gm-inequality/](http://blog.ifem.co.uk/am-gm-inequality/) has a discussion of the arithmetic - geometric mean inequality theorem I happened to read this morning.  Its very handy for solving the following: $(a+b)(b+c)(a+c) \geq 8abc$