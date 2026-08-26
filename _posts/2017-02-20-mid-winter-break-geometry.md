---
title: "Mid-Winter break Geometry"
date: 2017-02-20 22:49:00 +0000
tags:
  - geometry
  - sangaku
  - digression
author: me
---

By tradition, I'm going off on some problem solving walk-throughs:

![]({{ site.baseurl }}/assets/img/mid-winter-break-geometry/blogger_f32d6de3.jpg)

- Courtesy of @solvemymaths

This problem is a good example of the power of working backwards.

To start off with like all of these type problems, I draw the center of the circles in and connect all the tangent points to find the inner structure and look for triangles.

![]({{ site.baseurl }}/assets/img/mid-winter-break-geometry/blogger_58cc49a0.png)
One immediate simplification is to only find the ratio of BI to BK since its the same as the larger rectangle (1:2 scaling).  Secondly the inner right triangle EGJ is ripe for the Pythagorean theorem.

Before going any farther I noted some expressions:

- BI = 2R + T 
- BK = 2S + T

The required ratio to prove is $BI= \sqrt{5}BK$ so squaring each side to get rid of the radical you get  $BI^2= 5BK^2$ or $4R^2 + 4RT +  T^2 = 5(4S^2 + 4ST + T^2) $  This simplifies to $R^2 + RT = 5S^2 + 5ST + T^2$

For the rest of the exercise I kept this in mind as the target (although as you'll see I adjusted as I noticed more).

The second thing to immediately try was what fell out of the Pythagorean relationship in the triangle EGJ. Using $(R + S)^2 = (S+T)^2 + (R+T)^2$   That simplifies to: $RS = ST + RT + 2T^2$.  Which unfortunately doesn't look much like the target.  For one there is no R^2 or S^2 term and there is an extra RS and none of the coefficients are near yet.

I then munged around a bit and tried algebraically manipulating this expression to get it closer with no luck. So I looked back the drawing and noticed something I had missed initially  BK = 2S + T but it also is the radius of the large circle in other words 2S + T = R.  This immediately simplifies the target of   $BI^2= 5BK^2$ to  $(2R + T)^2  = 5R^2$ or $R^2 = 4RT + T^2$ which already looks closer to the Pythagorean expansion. But what's nice is you can also rewrite that as well with the segment  GJ = R - S rather than S + T.  

So I redid the Pythagorean relationship and found $(R + S)^2 = (R-S)^2 + (R+T)^2$ which simplifies to $4RS = (R+T)^2$ Again this looks more regular than our starting point but still not exactly the same. Then since our target is only in terms of R and T we need to substitute out the S which we can do given 2S + T = R so 2S = R - T and applying that you now have $2R(R-T) = (R+T)^2 $ or $2R^2 -2RT = R^2 + 2RT + T^2$.    Combining like terms you get $R^2 = 4RT  + T^2$ which is what we needed to show!

However what i actually did for the last step was the exact opposite of that explanation. Instead I took the target and put it into a form closer to what we had to see what was missing i.e. 

$$R^2 = 4RT + T^2$$

$$R^2 = (R + T)^2 + 2RT$$  (Completing the square)

$$R^2 - 2RT = (R+T)^2$$

It was this final form that reminded me to substitute back in for S since it was so close. And note how it was much easier to match the two expression after simplifying both of them rather than just going with the Pythagorean relation and trying to end at the initial goal.

5 Squares

![]({{ site.baseurl }}/assets/img/mid-winter-break-geometry/blogger_f2fddabd.jpg)

Also from @solvemymaths.  Prove the area of the square is equal to the triangle.

This one was is closely related to [cool-geometry-problem]({% post_url 2015-05-20-cool-geometry-problem %}) and both rely on the  fact that the triangles formed between touching squares have equal areas.   See the previous link for the proof. 

The 4 key observations here are the

1) bottom two triangles around the square are congruent. This is the start of a Pythagorean Theorem proof in fact.  (See below if KH = a and JL =  b then each of the triangles is an a x b and FI = c where $a^2 + b^2 = c^2$.

2) Each of the lower and middle triangles pairs have the same area because they are formed between squares. (i.e. CDF and FHI)

3) So all the lower and middle triangles have the same area (1/2 ab)!

4) You can create a new triangle with the same area as ABC that's easier to work out.

![]({{ site.baseurl }}/assets/img/mid-winter-break-geometry/blogger_f0b6d6b2.jpg)

That's pretty nifty but I noticed something interesting when modelling a bit in Geogebra. If you let the 3 generator squares be a Pythagorean triple i.e. a = 3, b = 4, c = 5 all of the points in the model and all the areas are also integral.  That didn't look like a coincidence.   In fact I could roughly see the upper 2 squares had areas $2(a^2 + c^2) - b^2$ and $2(b^2 + c^2) - a^2$. But why was this happening?

The key idea I first came up with was squaring or boxing off the figure and finding the new triangles.

![]({{ site.baseurl }}/assets/img/mid-winter-break-geometry/blogger_7ae0ef9e.png)

1. First I found the base of the new triangle and then the height.

![]({{ site.baseurl }}/assets/img/mid-winter-break-geometry/blogger_9b5411a1.jpg)

[More variations on  square boxing problems]

These all revolve around boxing or squaring off a square with 4 congruent right triangles.

!![](http://jwilson.coe.uga.edu/EMT668/EMAT6680.2002/Rouhani/Essay1/Image27.gif)

1. 

!![](https://pbs.twimg.com/media/C61E0jEWYAACjBJ.jpg)

Most elegant solution comes through boxing the large square.

2. [http://www.sineofthetimes.org/a-geometry-challenge-from-japan/](http://www.sineofthetimes.org/a-geometry-challenge-from-japan/)

!![](http://www.sineofthetimes.org/wp-content/uploads/2017/02/Parallelograms-768x576.jpg)

All the triangles are isosceles and all the quadrilaterals are rhombi. Find the  area of the square at the top.