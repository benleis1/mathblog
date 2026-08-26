---
title: "Euler Line Walkthrough"
date: 2019-05-13 17:18:00 +0000
tags:
  - digression
  - euler line
  - geometry
author: me
---

[http://www.gogeometry.com/problem/p742-circumradius-orthocenter-centroid-midpoint-distance-square.htm](http://www.gogeometry.com/problem/p742-circumradius-orthocenter-centroid-midpoint-distance-square.htm)

![]({{ site.baseurl }}/assets/img/euler-line-walkthrough/blogger_9f88bc3c.gif)

- First HO is the Euler Line and  the ratio of HG:OG is 2:1 so since HM = MG this is trisecting the Euler line  and HM = MG = OG.
- Its also well known $ OG^2  = R^2 - \frac{1}{9}(AB^2 + BC^2 + AC^2) $

1.  I'd like apply Stewarts's theorem to triangle AMO but I need to know the length of AG first.  However AG is the top part of the median from A through centroid G and therefore 2/3 of its length.  And we can calculate the length of the centroid itself using Stewart's theorem a second time:

let M' be the midpoint of BC then  $ (AB^2 + AC^2)\cdot BM'  = 2BM'(BM'^2 + AM'^2) $

$ =>   AM' = \sqrt{\frac{AB^2 +  AC^2}{2} - \frac{BC^2} {4}} $

So combining: $ AG = \frac{2}{3} AM' = \frac{2}{3}  \sqrt{\frac{AB^2 +  AC^2}{2} - \frac{BC^2} {4}} $

2. Now we're good to go:  $ (a^2  + R^2)OG = 2OG (OG^2 + AG^2) $

    With  the 2 substitutions from above:

      $ a^2 + R^2 =   2R^2 - \frac{2}{9}(AB^2 + BC^2 + AC^2)  + \frac{8}{9}(\frac{AB^2 +  AC^2}{2} - \frac{BC^2} {4}) =  2R^2 + \frac{2}{9}(AB^2 + AC^2) - \frac{4}{9}BC^2 $

3. Do this same calculation for the other 2 triangles BMO and CMO and add them all together to get:

  $ (a^2 + b^2 + c^2) + 3R^2 =   6R^2 + \frac{4}{9}(AB^2 + BC^2 + AC^2)  - \frac{4}{9}(AB^2 + BC^2 + AC^2) $

This simplifies to:   $ (a^2 + b^2 + c^2)  = 3R^2 $