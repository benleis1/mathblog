---
title: "More Piled Squares "
date: 2019-10-05 23:54:00 +0000
tags:
  - digression
  - geometry
  - piled squares
author: me
---

-->

[@aburi_roll_cake]

Here's another lovely variant on the piled up squares problems from Japan:

***Prove A B C are collinear in the figure above.    ***

I was interested because I just finished thinking about the interior triangles in this case: [cool-geometry-problem]({% post_url 2015-05-20-cool-geometry-problem %}) and how its particularly easy to prove they are all equal in area via the law of cosines. So I decided to go down a trigonometric route at first. But there are several fundamental observations about this construction that dropped out that I haven't discussed before that especially make it worthwhile.

**Note**: there's almost an embarrassment of  riches here. I fooled around with the Law of Sines before deciding the Law of Cosines was more fundamental as well as squaring off the entire figure before again discarding it as unnecessary,

![]({{ site.baseurl }}/assets/img/more-piled-squares/blogger_a29346c9.PNG)

**Main Procedure:**

- First I let the side of the leftmost square be s. and its area is therefore $ s^2 $.   Now we can apply the law of Cosines to triangle DFG:

        $1^2 + s^2  - 2s\cos{b} = 4 \rightarrow     2s\cos{b} = s^2 - 3 $

-  I can reuse this value to find length of AB since $ \cos{x} =  -\cos{(180-x)} $

       $ AB^2 = 1^2 + s^2 + 2s\cos{b} = 2s^2 - 2 $

- I can also calculate sin(180-b)=sin(b)

     $ \sin{b} = \sqrt{1 - \dfrac{(s^2 - 3)^2}{4s^2}} = \sqrt{\dfrac{-(s^4  -10s^2 + 9)}{4s^2}} = \dfrac{ \sqrt{(s^2 -1)(9 - s^2)}}{2s} $

-  Now I repeat this process between triangles DFG and EFH using a as the central angle and then between the EFH and BCE with c as the central angle to find all told:

$AB^2 = 2(s^2 - 1)   \text{ and }  \sin{b} = \dfrac{ \sqrt{(s^2 -1)(9 - s^2)}}{2s} $ 

$EH^2 = 10 - s^2  \text { we don't need this sin value }$
$BC^2 = 2(9 - s^2) \text{ and }  \sin{c} = \dfrac{ \sqrt{(s^2 -1)(9 - s^2)}}{2 \sqrt{10 - s^2}}$

**Note**: how the same polynomial shows up in both numerators and its half of the square root of the product of the side lengths.

**Checking the Angles we care about:**

Now we have everything we need via the law of Sines to find the sines of the two angles DBA and EBC. The hope is that they will be complementary.

- $ \sin{\angle{DBA}} = \dfrac{\sin{(\angle{180 -b})} \cdot AD}{AB} =   \dfrac{ \sqrt{(s^2 -1)(9 - s^2 )}}{2s}  \cdot  \dfrac{s}{ \sqrt{2(s^2 - 1)}} = \dfrac{\sqrt{9 -s^2}}{2 \sqrt{2}} $ 

- $ \sin{\angle{EBC}} = \dfrac{\sin{(\angle{180 -c)})} \cdot CE}{BC} =   \dfrac{ \sqrt{(s^2 -1)(9 - s^2)}}{2 \sqrt{10 - s^2}}  \cdot  \dfrac{\sqrt{10-s^2}}{\sqrt{2(9 - s^2)}} = \dfrac{\sqrt{s^2 -1}}{2 \sqrt{2}} $ 

By squaring we can verify that  $ \sin^2{\angle{DBA}} + \sin^2{\angle{EBC}} = 1 $ So they are complementary i.e. DBA + EBC = 90  and therefore ABC is a straight segment.

Alternate Trig Approach: 

This is basically the approach above after I polished it a bit to remove most of the more complicated algebra. There's a well known adage about repeating the same procedure and expecting a different outcome is the definition of insanity. But in this case, it only takes 8 repeated applications of the Law of Cosines to reach our result.

First we need a small lemma that formalizes something used above:

![]({{ site.baseurl }}/assets/img/more-piled-squares/blogger_d6c818b9.PNG)

This is found using the law of Cosines on the two triangles noting the cos(x)=-cos(180-x):

$ x^2 + y^2 - 2xy \cos{\alpha} = b^2$

$ x^2 + y^2 + 2xy \cos{\alpha} = a^2$

Add the two versions together to get:

$2(x^2 + y^2) = a^2 + b^2$

Applying this to the problem we find 3 relationships:

![]({{ site.baseurl }}/assets/img/more-piled-squares/blogger_e20056cc.PNG)

- Between the squares with lengths of 1 and x:  $ 2(x^2 + 1^2) = A^2 + 4  \rightarrow$    $\mathbf{A^2 = 2x^2 - 2} $
- Between the squares with lengths of 1 and y: $ 2(y^2 + 1^2)  = B^2 + 4  \rightarrow $    $\mathbf{B^2 = 2y^2 - 2}$
- Between the squares with lengths of 1 and 2: $  2(1^2+ 2^2) =   x^2 + y^2 \rightarrow$    $\mathbf{x^2 + y^2 = 10} $

Now we're going to use the Law of Cosines yet again on the two lower triangles

![]({{ site.baseurl }}/assets/img/more-piled-squares/blogger_002e862b.PNG)

- $ 1 + (2x^2  - 2) - 2 \sqrt{2x^2 - 2} \cos{\alpha} = x^2 $
- Solving for cos we get: $ \cos{\alpha}  =  \dfrac{x^2 - 1 }{2 \sqrt{2x^2 - 2}} = \dfrac{\sqrt{x^2 - 1}} {2\sqrt{2}} $
- Since its completely symmetrical:  $ \cos{\beta}  =  \dfrac{ y^2 - 1 }{2 \sqrt{2y^2 - 2}} = \dfrac{\sqrt{y^2 - 1}} {2\sqrt{2}} $

Here let's check if the two angles are complementary (remembering $ x^2 + y^2 = 10) $ from above:

- $ \cos^2 \alpha + \cos^2 \beta = \dfrac{ x ^2 - 1 + y^2 - 1 }{8} = \dfrac{ (x^2 + y^2) - 2}{8} = \dfrac{10 - 2}{8} = 1 $

Since both the original functions are non-negative, we don't have to worry about inverses and this implies $ cos \alpha $ is in fact $ \sin \beta $  and vice versa.  So they are complements and we are done!

Euclidean Take

I find the second approach fairly neat and I like the lemma on its own but it doesn't clearly show why the 2:1 ratio in the given squares is so crucial (other than the algebra working out).  So I'm going to close with a Euclidean version based on some ideas from @illarosac.  

![]({{ site.baseurl }}/assets/img/more-piled-squares/blogger_5d2325a3.PNG)

Everything starts with  an interesting Lemma again:  if you extend either triangle into a parallelogram as above you end up with a congruent version of the other triangle.

- This is proved via SAS:  two sides are the same and the interior angle can proved the same through a quick angle chase. 
- Note: the version is also rotated exactly 90 degrees

![]({{ site.baseurl }}/assets/img/more-piled-squares/blogger_3ae5cc55.PNG)

This version starts by using the lemma above on the two sides we're interested triangles: ABD and BEC. 

- From our parallegorams:  $ \triangle{DBL} \cong \triangle { FDG} $ and  $ \triangle{BEN} \cong \triangle{EFH} $ 
- In addition using the fact that the diagonals of the parallelograms intersect at their midpoints we note that DI is half of DL which has length 2 so DI  has a length of 1 and therefore DIB is an isosceles triangle.
- This repeats on the other side: EJ is also half of EN which is length 2.  So BEJ is also isosceles

[**Note: this is why the side ratios 2:1 are key: we need to form these isosceles triangles.]**

Now we can engage in an extended angle chase going clockwise starting at point B.  I've  highlighted the congruent angles with various colors above:

- let $ \angle{DBI} = x $ then $ \angle{DIB} = x $ from the isosceles triangle.
- The remaining $ \angle{IDB} = 180 - 2x $  and its congruent to $ \angle{GFB} $
- Then since $ \angle{EFH} $ is supplementary to $ \angle{GFB} $  it must be 2x.
- Then $ \angle{IDB} $ is congruent to $ \angle{GFB} $ and its also 2x.
- Finally since we have our right side congruent triangle  $\angle{EBJ} = \angle{EJB} =  90 -x  $

All of which shows  EJB and DBI are complementary and as we reasoned the previous 2 times the overall points A,B, and C are collinear.

-->

