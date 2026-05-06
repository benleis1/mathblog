---
title: "Cool Geometry Problem Redux"
date: 2020-09-06 23:11:00 +0000
tags:
  - piled squares
author: me
---

Find the area of the big triangle.  [Matt Enlow]

  In the beginning there was [cool-geometry-problem]({% post_url 2015-05-20-cool-geometry-problem %}).  And there are some particularly interesting facts about the triangles
  that I enjoyed when seeing this problem for the first time.In fact, I've come
  back to it several times over the years.  Most recently, this Spring Matt
  posted a few variations on the classic problem and I liked the first one
  enough to include it in my problem compilation: [https://blog.mathoffthegrid.com/p/collected-problems-5.html](https://blog.mathoffthegrid.com/p/collected-problems-5.html).  Being time constrained I didn't really have a go at the problem
  posted above and assumed it was similar to the other ones.  A few days
  ago based when it cropped up again I took a real look and it turns out
  this  extension might be just as good or even better than  the
  original problem.  (Also I spent more time than normal styling in geogebra so I want to save the fruits of my labor somewhere.)

  The problem solving process for this one revolved around seeing the similar
  triangles and then realizing there was a centroid involved. The second part
  was actually motivated by a picture from another poster and it took me a while
  to understand why it worked. I could see that connecting the vertices created
  a median but I didn't initially know why that was the case. After playing
  around I went back to the similar triangles thinking about the centroid and
  then it just dawned on me. 

![]({{ site.baseurl }}/assets/img/cool-geometry-problem-redux/blogger_44b41daf.JPG)
Use Heron's law or the variant I prefer in this case Triangle Area =  $
\frac{1}{4} \sqrt{4AB - (A + B - C)^2} $    where A, B and C are the
areas of the squares 
From previous problems (See first link
abov) all the shaded triangles have the same area. This works out to 27.

![]({{ site.baseurl }}/assets/img/cool-geometry-problem-redux/blogger_c95cb44c.JPG)
If you collapse the squares the 3 original outer triangles which we calculated the area of fit together to form this triangle which is similar to our large triangle. Moreover since they all have the same area, 27,  the center where they meet is the center of mass i.e. the centroid  So we know in this case that  the length of the median AM  is $ \frac{3}{2}\cdot \sqrt{60} $Like all segments on the triangle (height, base etc.) the square of the median exists in a constant ratio to the area for all similar triangles Here its $ \dfrac{\left(\frac{3}{2} \sqrt{60}\right)^2}{27} = \dfrac{5}{3} $ .
![]({{ site.baseurl }}/assets/img/cool-geometry-problem-redux/blogger_061f99e6.JPG)If you collapse the squares you also form the second similar triangle above from the 3 corner triangles plus the center one. 
Let the sum of the areas of the 3 corners be S then its area is S + 27. 
Based on the fixed ratios the median length is $ \sqrt{ \frac{5}{3} ( S + 27) } $
![]({{ site.baseurl }}/assets/img/cool-geometry-problem-redux/blogger_9517629b.JPG)
Finally we get to combine everything by adding the parallel lines in red. The inner triangle here is the same one from the previous image. Also because the lines are parallels we can show by angle chasing or noting the centers are the same that AM is the median for $ \triangle{ABC} $ and overlaps the median for the inner triangle.  From the parallels its all the case that AD has length $ \sqrt{60} $ and EM  is shifted over from the small triangle and has length $ \frac{1}{2}\sqrt{60} $ i.e. they are pieces of the median of the first smallest triangle.   So $ AM = \frac{3}{2}\sqrt{60} + DE = \frac{3}{2}\sqrt{60} +  \sqrt{ \frac{5}{3} ( S + 27) } $.Applying the area/median ratio to that means $ [ABC] = \dfrac{3}{5}|AM|^2 = 108 + S + 18 \sqrt{S +27} $.  But it also is the sum of the 7 triangles and 3 squares:  $ S + 4 \cdot 27 + 51 + 60 + 87  = S + 306 $.So $ S + 306 =  108 + S + 18 \sqrt{S +27}   \rightarrow 11 = \sqrt{S + 27} $Finally:  $S + 27 =121$ and $S = 94$.  So $[ABC] = 94 + 306 = 400 $.

