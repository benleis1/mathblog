---
title: "Pentagon + Quadrature of the Parabola"
date: 2019-07-01 07:22:00 +0000
tags:
  - 36-54-90
  - digression
  - golden ratio
  - geometry
author: me
---

Last week, I saw this really fun parabola problem from @diegorattaggi and  I became interested for two reasons:

- I've been playing a lot with parabolas recently see: [https://mymathclub.blogspot.com/2019/06/quadrature-of-parabola-proposition-2.html](https://mymathclub.blogspot.com/2019/06/quadrature-of-parabola-proposition-2.html)
- I like pentagons for their embedded golden ratios:  Ex: [https://mymathclub.blogspot.com/2018/12/proof-of-pentagon-construction.html](https://mymathclub.blogspot.com/2018/12/proof-of-pentagon-construction.html)

![]({{ site.baseurl }}/assets/img/pentagon-quadrature-of-the-parabola/blogger_7f44d356.jpg)

Original Analytic Approach
This was my first idea: find the coordinates of points B and C via the parabola equation and then

set the distance between them equal to the base of the pentagon.

![]({{ site.baseurl }}/assets/img/pentagon-quadrature-of-the-parabola/blogger_beeaa027.PNG)

- Above I set the x coordinate for C to a.  Then the x coordinate of B must be \( \phi \cdot a \) since EB is a \( \phi \cdot CD \). See: [[post on golden ratio]](https://mymathclub.blogspot.com/2018/09/golden-ratios-in-regular-polygons.html)
-  We can compute the length of \( BC = \sqrt{ (\phi - 1)^2 \cdot a^2 + (\phi^2 - 1)^2 \cdot a^4}\) 
- Setting that equal length of CD we get: \( 4\boldsymbol{a^2} =  (\phi - 1)^2 \cdot \boldsymbol{a^2} + (\phi^2 - 1)^2 \cdot \boldsymbol{a^4} \)
-  \( 4 =  (\phi - 1)^2 + (\phi^2 - 1)^2 \cdot a^2 \)
- \( 4 = (2 - \phi) + \phi^2 \cdot a^2 \)
- \( 2 + \phi = \phi^2 \cdot a^2 \)
- \( a = \dfrac{\sqrt{2+\phi}}{\phi} \)

To find the height of A  note that AHC forms an 18-72-90 triangle and those ratios are also well known:

!![]({{ site.baseurl }}/assets/img/pentagon-quadrature-of-the-parabola/blogger_d9386412.PNG)

So \( AH =  \sqrt{4\phi^2  - 1} \cdot a = \sqrt{4 \phi^2 - 1} \cdot \dfrac{\sqrt{2 + \phi}}{\phi} = \dfrac{\sqrt{(4 \phi + 3) \cdot(2 + \phi)}}{\phi} \)

The total height is then \(OA = AH + HO = \dfrac{\sqrt{(4 \phi + 3) \cdot(2 + \phi)}}{\phi}  + \dfrac{2 + \phi}{\phi^2} \)

- \( OA = \dfrac{\sqrt{(4 \phi + 3) \cdot (2 + \phi) \cdot (\phi^2)}}{\phi^2} + \dfrac{(2 + \phi)}{\phi^2} \) 
- \( (2 + \phi) \cdot (\phi^2) = (2 + \phi) \cdot (\phi + 1 )= (4 \phi + 3) \)
- So \( OA = \dfrac{(4 \phi + 3) +  (2  + \phi)}{\phi^2} \)
- \( OA = \dfrac{(5 \phi + 5) }{\phi^2} \) 
- \( OA = \dfrac{(5 \phi + 5) }{\phi + 1 } = 5 \) 

**Refinement:**

Above was a fair amount of computation and on reflection I thought I could improve this quite a bit.  Before starting, I'll note the pentagon is made out of five  72-54-54 isosceles triangles and each of these can be split into a 36-54-90.   Those triangles have well known side ratios via the following construction which is closely related to the earlier triangle.  After solving for the ratio of the sides of the  similar triangles ABC and ABD you'll find \( BC = \phi \cdot AB \) 

![]({{ site.baseurl }}/assets/img/pentagon-quadrature-of-the-parabola/blogger_f242c997.PNG)

![]({{ site.baseurl }}/assets/img/pentagon-quadrature-of-the-parabola/blogger_cf2544e5.PNG)

Using the ratios of the 36-54-90 triangle together with  the properties of the parabola we can get a basic idea about heights of most of the interesting points in the problem.  (Note: using \( \phi^2  = \phi + 1 \) we can convert \( 4 - \phi^2 = (4 - (\phi + 1) = 3 - \phi \) )  Our pentagon is constructed out of some  k scaled version of the 36-54-90 and then just adding the various lengths, we can see above the outlines of the endpoint heights.  The only piece left to find  is the scale factor k.  Now, we're going to turn our attention back to point B and look at the triangle that is formed:

![]({{ site.baseurl }}/assets/img/pentagon-quadrature-of-the-parabola/blogger_edbc12ee.PNG)

Once again with  the ratios for the 36-54-90 B is a \( \phi \) scaled version of  segment CH and we now have a right triangle CBN (its a 18-72-90) that we can apply the basic golden ratio equation \( \phi^2 = \phi +1 \) and the Pythagorean theorem to:

- \( BC^2 = CN^2 + BN^2  \)

- \( 4 \cdot \boldsymbol{(4-\phi^2) \cdot k^2} = (\phi^2 - 1)^2 \cdot \boldsymbol{(4-\phi^2)^2 \cdot k^4}  + (\phi - 1)^2 \cdot \boldsymbol{(4 - \phi^2) \cdot k^2} \) 

- \(  4 = (\phi^2 - 1)^2 \cdot (4-\phi^2) \cdot k^2 + (\phi - 1)^2  \)   

- \( 4 = \phi^2 \cdot (4-\phi^2) \cdot k^2 + (\phi - 1)^2  \)

- \( 4 - (\phi - 1)^2 = \phi^2 \cdot (4 - \phi^2) \cdot k^2 \)

- \( \dfrac{(2 - (\phi - 1) \cdot (2 + (\phi + 1)}{(\phi + 1)(4 - \phi^2)} = k^2  \)

- \( \dfrac{( 3 - \phi) \cdot (1 + \phi)}{(\phi + 1)\cdot (3 - \phi)} = k^2   \rightarrow  k = 1\)

Applying that back into our scaled heights from the first part: the top point A is at (5,0) and center G is at (3,0).

Wait a minute:
Note: comparing the two methods we found two different side lengths which means \( \sqrt{4  - \phi^2} = \dfrac{\sqrt{2+\phi}}{\phi} \).   That doesn't seem obvious.

Lemma:   \( \phi =  \dfrac{1}{\sqrt{2 - \phi}} \)

- \( \phi^2 = \phi + 1 \)
- \( \phi^2 - \phi  - 2 = -1 \)
- \( (\phi - 2)(\phi + 1) = -1 \)
- \( \phi + 1 = \dfrac{1}{2 - \phi} \)
-  \( \phi^2 =  \dfrac{1}{2 - \phi} \)
-  \( \phi =  \dfrac{1}{\sqrt{2 - \phi}} \) or \( \dfrac{1}{\phi} = \sqrt{2 - \phi} \)

So we can transform between each form as follows:

-  \( \sqrt{4  - \phi^2} = \sqrt{(2-\phi)\cdot(2+\phi)} \)
-  \( \sqrt{(2-\phi)\cdot(2+\phi)} = \dfrac{\sqrt{2 + \phi}}{\phi} \)

Final Method

I kept wondering if there was path to get the side length with even less algebra and after experimenting I found the following derivation from triangle ACF. 

- Let AM = MB = a.
- As from before all diagonals across two vertices are \( 2a \cdot \phi \)  in length including AC.
- Then we can compute the the two other side lengths of ACF as we did before.  \( CF = a^2(\phi^2-1) = a^2 \cdot \phi \) and \( AF = a + \phi \cdot a = a \cdot (1 + \phi) \)
- Since this is a 36-54-90 we can compare to the prototypical side ratios

\( \dfrac{CF}{AC} = \dfrac{a^2 \cdot \phi}{2a \cdot \phi} = \dfrac{\sqrt{4 - \phi^2 }}{2} \)

\( a  = \sqrt{ 4 - \phi^2} \)

At this point we're back where we were in step 2 from above and know k must be  1. Then we can simply add the parts of the triangle to arrive at a total height of 5 again. 

Followup: Question:

We can enclose the top of the pentagon with another parabola. After doing so what fraction of the space between the parabolas does the pentagon occupy?

![]({{ site.baseurl }}/assets/img/pentagon-quadrature-of-the-parabola/blogger_7db94112.PNG)

- From the previous problem we found point A was at (5,0),  The side lengths were \( s  = 2 \sqrt{4 - \phi^2} \) and  point B was at \( \phi \sqrt{4 - \phi^2}, \phi^2 \cdot (4  - \phi^2) \)
- We can use Archimedes's quadrature of the parabola to calculate the area underneath the 2 parabola: 

![]({{ site.baseurl }}/assets/img/pentagon-quadrature-of-the-parabola/blogger_6d7c755c.PNG)

- Area under A to EB   = \( \dfrac{4}{3} \cdot \dfrac{\phi \cdot s}{2} \cdot Length(AM) \)
- Area under EB to O =  \( \dfrac{4}{3} \cdot \dfrac{\phi \cdot s}{2} \cdot Length(MO) \)
- Since Length(AM + MO) = 5 when you add them together you get [ParabolaArea] =   \( \dfrac{4}{3} \cdot \dfrac{5}{2} \cdot s  \cdot \phi \) 

Next we find the area of the pentagon which is made up of the five 72-54-54 triangle wedges:  we already know their base is s and their height is \( \phi \)

![]({{ site.baseurl }}/assets/img/pentagon-quadrature-of-the-parabola/blogger_071147a6.PNG)

- [Pentagon] =  \( 5 \cdot \dfrac{s}{2} \cdot \phi \)
- So the ratio of the [Pentagon] :  [ParabolaArea]   is   \( \dfrac{5}{2} \cdot s \cdot \phi :  \dfrac{4}{3} \cdot \dfrac{5}{2} \cdot s \cdot \phi \)  which is 3:4

