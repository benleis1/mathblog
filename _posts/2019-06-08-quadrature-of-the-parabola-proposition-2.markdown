---
title: "Quadrature of the Parabola Proposition 2"
date: 2019-06-08 05:20:00 +0000
tags:
  - Archimedes
  - quadrature of the parabola
  - geometry proposition 2
author: me
---

I've been reading Steven Strogatz's "Infinite Powers" recently and that briefly mentioned Archimedes's use of limits and infinitesimals while calculating the area under a parabola.   My curiosity was piqued and I started to think about  the full proof. In most accounts a few propositions are mentioned as being "commonly known". The reason why this is the case is that in the original text, they were stated without proof.  What follows is some filling in of the holes for myself for how these work.

See: [http://cerebro.cs.xu.edu/math/math147/02f/archimedes/archpartext.html](http://cerebro.cs.xu.edu/math/math147/02f/archimedes/archpartext.html) for a translation of the original text. 

![]({{ site.baseurl }}/assets/img/quadrature-of-the-parabola-proposition-2/blogger_d0f680a7.PNG)

Given a parabola and a secant AB. Construct a tangent line parallel to AB at C and a tangent line at B.  Drop a parallel line to the axis of symmetry DM through C. Prove C is the midpoint of DM i.e. DC = CM.

Analytic Approach
What follow is an analytic proof. and given how much more algebraically I usually manipulate parabolas was the easier for me to come to on my own. But I think it doesn't reveal as much about the parabola when all is said and done.

- Without loss of generality lets simplify to the  parabola \( y = -ax^2 \) which can be translated to any other location without changing the logic.
-  Let \( A = (x_0, -ax_0^2) \) and \( B = (x_1, -ax_1^2) \)

- The slope of AB,   \( m = \dfrac{ -ax_1^2 - -ax_0^2} {x_1 - x_0} = -a(x_0 + x_1) \)

**Lemma:**   M is the midpoint of AB (easy to do also via analytic geometry)

-  The tangent at C will have the equation: \( y = -a(x_0 + x_1) \cdot x + a \cdot b. \)   Note: I set the constant to the scaled ab rather than just b to simplify matters below.
- We need to find b so looking at the intersection C: \( -a(x_0 + x_1) \cdot x + a \cdot b = -ax^2 \)
- At  the tangent there must be only one root for this quadratic and the discriminant must be 0. 
- So  \( (x_1 + x_0)^2 - 4b = 0 \)  and  \( b = \dfrac{(x_0 + x_1)^2}{4} \)
- The final equation for the tangent is: \( y = -a(x_0 + x_1) \cdot x  + a \cdot   \dfrac{(x_0 + x_1)^2}{4} \) . 
- Once again we return to the intersection  :  \( -ax^2  = -a(x_0 + x_1) \cdot x +  a \cdot  \dfrac{(x_0 + x_1)^2}{4} \)
- \( x^2 -  (x_0 + x_1) \cdot x +  \dfrac{\left (x_0 + x_1 \right )^2}{4} = 0  \rightarrow   \left (x - \dfrac{x_0 + x_1}{2} \right  )^2 = 0 \)   Its a square!
- In other words the x coordinate of the point of tangency is at the same coordinate as the midpoint of AB.

**Main Proof:**

- M is the midpoint at \( (\dfrac{x_0 + x_1}{2}, \dfrac{-ax_0^2 + -ax_1^2}{2} ) \)

- C is on the same vertical as M so its coordinates are \( ( \dfrac{x_0 + x_1}{2}, -a \left (\dfrac{x_0 + x_1}{2} \right )^2 ) \)

- The tangent line at B where \( x = x_1 \) has a slope of \( f'(x) = -2ax = -2ax_1 \) 
- So the equation of the tangent at B is \( y = -2ax_1 \cdot ( x  - x_1) - ax_1^2 \)

We'll find the intersection of the 2 tangent lines next and then compute its relative horizontal length vs that of AB.

- Set the 2 tangent line equations equal: \(  -2ax_1 \cdot ( x  - x_1) - ax_1^2 = -a(x_0 + x_1) \cdot x   + a \cdot \dfrac{(x_0 + x_1)^2}{4}  \)
- That simplifies to:  \( 2x_1 \cdot x - {x_1}^2 = (x_0 + x_1) \cdot x  - \dfrac{(x_0+ x_1)^2}{4} \)
- \( x \cdot ( x_1  - x_0) = x_1^2 -  \dfrac{(x_0+ x_1)^2}{4} = \dfrac{3x_1^2  - 2x_0x_1 - x_0^2 }{4}\)
-  \( x = \dfrac{3x_1 + x_0}{4} \)

The x component of the segment CE therefore:  \( \dfrac{3x_1 + x_0}{4}  - \dfrac{x_0 + x_1}{2} = \dfrac{x_1 - x_0}{4} \)

Compare that to the original x component of MB which is \( \dfrac{x_0 - x_1}{2} \) and we see they are in a 1:2 ratio.

Both of these components are also the altitudes of the two similar triangles  \( \triangle{DCE} \) and \( \triangle{DMB} \).  Since the altitudes are 1:2 DC:DM is also 1:2 or in other words C is the midpoint of DM.

**Synthetic Proof**

**(**Based on some ideas from [https://www.cut-the-knot.org/Curriculum/Geometry/ArchimedesTriangle.shtml](https://www.cut-the-knot.org/Curriculum/Geometry/ArchimedesTriangle.shtml))

I prefer this approach.  To start you need to lean on the definition of a parabola as the loci of points equidistant from the focus and directrix as well as the tangent line having a congruent angle to the focus

![]({{ site.baseurl }}/assets/img/quadrature-of-the-parabola-proposition-2/blogger_44d756f5.PNG)

Every point A on the parabola is equidistant from the Focus Point and Directrix line.

![]({{ site.baseurl }}/assets/img/quadrature-of-the-parabola-proposition-2/blogger_3856fab8.PNG)

Tangents to a parabola form an angle bisector between the segments to the directrix and focus.

**Lemma:**

As before we draw the tangents to A and B that meet at P and drop a perpendicular segment PM down through C on the curve and and add a tangent there at C.  We start by  showing M is the midpoint of AB.

![]({{ site.baseurl }}/assets/img/quadrature-of-the-parabola-proposition-2/blogger_f98ec05a.PNG)

This time though we draw in the Focus and segments from the directrix to the A and B (A' and B').

**By property 1.**

- AA'  =  AF  and BB' = BF (highlighted in red and blue)

**By property 2.**

- \( \angle{A'AP} = \angle{PAF} \) and \( \angle{B'BP} = \angle{PBF} \)  or in other words AP and BP are both angle bisectors.

![]({{ site.baseurl }}/assets/img/quadrature-of-the-parabola-proposition-2/blogger_739f34c2.PNG)

- First via SAS,  \( \triangle{FBE} \cong \triangle {B'BE} \) and likewise  \( \triangle{FAD} \cong \triangle{A'AD} \)  
- From that we get AD and BE are perpendicular bisectors.
- Then we can form 2 more kites by added PB', PF, and PA'.  
- First notice the central points of the kites  D and E are perpendiculars so we have 4 right triangles.- So we can apply SAS again to show \( \triangle{FPE} \cong \triangle {B'PE} \) using the shared edge PE and the FE and B'E  and  likewise \( \triangle{FPD} \cong \triangle{A'PD} \). Therefore A'P = FB  and FB = B'P so transitively A'P = B'P
- Then \( \triangle{A'PB'} \) is isosceles and since I is at the right angle it must be the midpoint of A'B'.
- Finally we look at the trapezoid A'B'AB formed by the the two parallels from the directrix AA' and BB'.  By similarity M must be the midpoint on the other side.

**Main Proof:**

This part goes much quicker than the previous analytic version.

![]({{ site.baseurl }}/assets/img/quadrature-of-the-parabola-proposition-2/blogger_4e8fe6ef.PNG)

- The intersection of the 2 tangent lines from B and P is at G. It is therefore also an exterior point with 2 tangents.  We then just drop a parallel line to the axis of symmetry and by the lemma, K is the midpoint of MB. 
- \( \triangle{PMB} \) and \( \triangle{GKB} \) are similar due to the parallels PM and GK. So since K is the midpoint of MB, G is the midpoint of PB. This can be repeated on the other side at the intersection of AP and the tangent from C.  
-  Since the tangent connects two midpoints, it creates a similar triangle and \(  CG  || AB \) 
-  That's all we need to show \(\triangle{PBM}\) and \(\triangle{PGC} \) are similar also. Since  CG:MB is in a 1:2 ratio  PC:PM is also 1:2 and PC = CM.

**Conclusion**

![]({{ site.baseurl }}/assets/img/quadrature-of-the-parabola-proposition-2/blogger_e71ceb81.PNG)

Its just incredibly neat that given a parabola if you draw a chord through 2  points and then form a triangle with the tangents you end up with another parallel tangent at C forming a medial triangle around the centroid.  Two seemingly unrelated objects the parabola and centroid are linked.

