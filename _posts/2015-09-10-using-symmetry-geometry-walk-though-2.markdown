---
title: "Using Symmetry: Geometry Walk Though #2"
date: 2015-09-10 15:39:00 +0000
tags:
  - geometry
author: me
---

This is another in my series exploring geometric problem solving through rigid transformations (and creating diagrams with geogebra). See: [http://mymathclub.blogspot.com/2015/09/ratios-in-square-problem.html](http://mymathclub.blogspot.com/2015/09/ratios-in-square-problem.html)

This problem starts with a very simple picture but I want to show my first attempt down a non-productive line of thought.

![]({{ site.baseurl }}/assets/img/using-symmetry-geometry-walk-though-2/blogger_f6e69d02.png)

**Given B is the median of AC and angle EAC is 30 and angle ECA is 1 5 find angle BEC.**

Two thoughts came to me immediately. Angle EAC is almost part of an equilateral triangle if we reflect the whole triangle. Secondly ECA is half of EAC and it could be divided into two halves so we end up with many 15 degree angles. I pursued the second thought first because it created some attractive symmetry.

![]({{ site.baseurl }}/assets/img/using-symmetry-geometry-walk-though-2/blogger_f19739e8.png)
With some angle tracing EGF falls out as 30 degrees as well. So it looked like I just had to prove triangle EFG was isosceles (or find angle EFG) and here I became stuck. I started to break the triangle down further to tease out 30-60-90 triangles and side relationships. This didn't quite arrive at a solution. I also tried some more reflections and found a few 45-45-90 sub triangles. But that again didn't quite get me where I wanted to be.

So I went back to my first thought. Reflect the whole triangle AEC and create a giant equilateral triangle out of it.

![]({{ site.baseurl }}/assets/img/using-symmetry-geometry-walk-though-2/blogger_f876f6c5.png)
I connected the two points C and C' and drew the full angle bisector in to where it intersected at D'.

Then I started angle tracing at which point I realized I didn't need the full equilateral triangle the bottom 30-60-90 was interesting by itself.

![]({{ site.baseurl }}/assets/img/using-symmetry-geometry-walk-though-2/blogger_d40a31b1.png)
First I started finding congruent sides. CD was half of AC because of the 30-60-90 triangle. I had forgotten that B was the median by this point and actually started to draw one on for a minute and thought I would have to prove B was a median until I rechecked and realized it was given. I then connected BD to form the interior equilateral triangle since that seemed useful both in terms of symmetry and subdividing angles. For instance ADB is 30 degrees by angle chasing meaning  triangle ABD is isoscleses. By further angle chasing it also turns out that DCE must be 45 degrees (60 - 15) and then the final angle of the right triangle CDE must also be 45 and it is also isosceles. This produced the fifth congruent line DE. At this point I could tell I was very close. I now had proved a new isosceles triangle EBD which gave up EBD was 75 degrees.  This was the last unknown angles besides x itself in the triangle BCE!  x + 15 + 60 + 75 = 180. So x = 30.

This one fell out after trying 2 ideas. With some other problems I go down many more avenues. My general guiding principle is to try out reflections and angle division additions first around the figure always with an aim at more symmetry or new congruences.