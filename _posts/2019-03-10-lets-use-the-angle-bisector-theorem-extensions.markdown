---
title: "Let's use the Angle Bisector Theorem extensions!"
date: 2019-03-10 04:30:00 +0000
tags:
  - digression
  - algebra
  - geometry
author: me
---

What is the ratio of the ellipse's width to its height?[#math](https://twitter.com/hashtag/math?src=hash&ref_src=twsrc%5Etfw) [#maths](https://twitter.com/hashtag/maths?src=hash&ref_src=twsrc%5Etfw) [#mathchat](https://twitter.com/hashtag/mathchat?src=hash&ref_src=twsrc%5Etfw) [#mathschat](https://twitter.com/hashtag/mathschat?src=hash&ref_src=twsrc%5Etfw) [#nerdsniping](https://twitter.com/hashtag/nerdsniping?src=hash&ref_src=twsrc%5Etfw) [#MTBoS](https://twitter.com/hashtag/MTBoS?src=hash&ref_src=twsrc%5Etfw) [#iteachmath](https://twitter.com/hashtag/iteachmath?src=hash&ref_src=twsrc%5Etfw) [pic.twitter.com/CGntV3U1f3](https://t.co/CGntV3U1f3)
— Matt Enlow (@CmonMattTHINK) [March 7, 2019](https://twitter.com/CmonMattTHINK/status/1103659971974234116?ref_src=twsrc%5Etfw)

I really like this problem Matt recently posted. So I'm going to show several different ways to handle it culminating in perhaps not the easiest one but one which links back to some recent posts I put up on angle bisectors. (Plus there's lots of factoring examples)

Background

The one piece from calculus that is necessary for all of these solutions is determining the radius of the smallest green [osculating circle](https://en.wikipedia.org/wiki/Osculating_circle) in terms of a and b. 

For a regular ellipse: \( \dfrac{x^2}{a^2} + \dfrac{y^2}{b^2} = 1 \) 

Parameterize using the normal form  as follows  \( P(\theta) = ( a \cdot cos(\theta), b \cdot sin(\theta)) \). 

Then the radius of curvature at \( P(\theta)  = \dfrac{(a^2 \cdot sin(\theta) + b^2 \cdot cos(\theta))^{\frac{3}{2}}}{ab} \).  

For the green circle we're looking at the point  \(\theta = 0 \) i.e. \(sin(\theta) = 0\) and \(cos(\theta) = 1\) so this all simplifies down to \( \dfrac{b^2}{a} \)

*Whew*

Secondly we can fix one variable without losing any generality so for most of what follows I set b = 1 which makes everything a bit easier for me to manipulate and explain.

**Process:**

I fooled around a bit on geogebra before really diving in to convince myself that there was really a unique solution. What I could see after experimentation was that the middle circle was key. It either never touched or touched twice and there therefore really was a constraint on the setup. (Also the ratio was approximately 3.25)

![]({{ site.baseurl }}/assets/img/lets-use-the-angle-bisector-theorem-extensions/blogger_fb2adb05.PNG) 

No intersections

vs.

![]({{ site.baseurl }}/assets/img/lets-use-the-angle-bisector-theorem-extensions/blogger_5d62ac0e.PNG)

Too many intersections

Analytic I

This is the first approach I took once I found out about the radius of curvature and had finished  the experimentation phase.

![]({{ site.baseurl }}/assets/img/lets-use-the-angle-bisector-theorem-extensions/blogger_3b8cc818.PNG)

- First after setting b to 1 the  radius of  \( O_3 \) becomes \( \dfrac{1}{a^2} \). 
- Then the radius of  \( O_2 \)  is the remainder halved \(r = \frac{1}{2} \cdot ( a - (1 + \dfrac{2}{a^2}))  =  \dfrac{a^2 - a - 2}{2a} \).   Note: the top polynomial has an easy factorization.

- Next we're looking for the intersection of \( O_2 \) and the ellipse. These have the following equations. Note I'm delaying expanding r to make the following algebra easier to follow and to reuse the result later.

$$\text{Ellipse:  }   \dfrac{x^2}{a^2} + y^2 = 1 $$

$$ \text{Circle:   } (x - (1 +  r))^2 + y^2 =   r^2 $$

- The standard way to deal with this is via substitution. Via the the first equation we have \( y^2 =  1 - \dfrac{x^2}{a^2} \).  
- After expansion we then arrive at the quadratic:  \( (\dfrac{a^2 -1}{a^2})x^2 + -2(1+r)x + 2(1+r) = 0 \)  [Its a good sign that the linear and constant terms are inverses]
- In order for there to be only 1 intersection we need the equation to have a single root (o.w. we'll get the more normal multiple x values implying multiple intersection cases.) So this is a good time to use the discriminant and set \( b^2 = 4ac \).

$$ 4 (\mathbf{1 + r})^2 = 4 \cdot (\dfrac{a^2 - 1}{a^2})\cdot 2(\mathbf{1 + r})$$

$$ (1 + r)[(1+ r) - 2(\dfrac{a^2 - 1}{a^2})] = 0 $$

- One solution to this is r = -1 but that doesn't work geometrically. The second is that 1 + r is equal to \( 2(\dfrac{a^2 - 1}{a^2}) \) or equivalently \( r = 1 - \dfrac{2}{a^2} \) .  Its finally necessary to expand r and see what that means.

$$ 1 + r = 2(\dfrac{a^2 - 1}{a^2}) $$

$$ 1 + \dfrac{a^2 - a - 2}{2a} = 2(\dfrac{a^2 -1}{a^2}) $$

$$ \dfrac{a^2 + a - 2}{2a} = 2(\dfrac{a^2 - 1}{a^2}) $$

$$  a\cdot(a^2 + a - 2) = 4(a^2  - 1)$$

$$  a\cdot(a+2)(\mathbf{a - 1}) = 4(a +1)(\mathbf{a-1})$$

$$(a - 1)(a^2  - 2a - 4)  = 0 $$

a =1 would imply the ellipse is a circle so we discard it and so looking at the second factor via the quadratic equation $$a  = \dfrac{2 \pm 2\sqrt{5}}{2}$$ We throw out the negative solution and are are left only with \(2 \phi \)

Variant 1 (Calculus)

- You could take the first derivative instead and set \( f'(x) = 0 \) where \( f' = 2(\dfrac{a^2 - 1}{a^2})x - 2(r+1) \)
- Solve for x and then substitute back in to find a again. I actually find this a a bit more work than above.

Synthetic Alternative

What follows is a bit more complicated than above but provides a nice opportunity to see more of the ellipse geometrically and play with the angle bisector theorem extensions I talked about  [here](https://mymathclub.blogspot.com/2019/01/theres-more-to-angle-bisector-theorem.html).  Remember that an ellipse is also defined as all the points with a constant distance from its 2 foci.

![]({{ site.baseurl }}/assets/img/lets-use-the-angle-bisector-theorem-extensions/blogger_657fa4ff.png)

In addition at any point of tangency the exterior angles are congruent i.e. they reflect nicely.

![]({{ site.baseurl }}/assets/img/lets-use-the-angle-bisector-theorem-extensions/blogger_64ee65d2.gif)

However at a dual point of tangency for both a circle and a ellipse you are also perpendicular to the radius of the circle. That means the interior angles formed are also congruent i.e. you have an angle bisector:

![]({{ site.baseurl }}/assets/img/lets-use-the-angle-bisector-theorem-extensions/blogger_009a3477.PNG)

- First the sum of the lengths of the 2 foci must be 2a and via the quadratic equation the their length from the center is \( f  = \sqrt{a^2 - b^2} \)
- Now we can attack the angle bisector for \( \triangle{F_1HF_1} \)  letting r be the radius of \( O_2 \) again.
- \( F_2O_2 = f + (b + r) \) and  \( F_1O_2 = f - (b + r) \)  Note: they are conjugates.
- Let x = \( F_2H \) and then \( F_1H \) must  be 2a - x.
- Next use the angle bisector theorem to find x 

$$ \dfrac{x}{f + (b+r)} = \dfrac{2a -x}{f - (b+r)}$$

$$ F_2H = x = a  + \dfrac{a ( b + r)}{f} \text{ and } F_1H = 2a - x = a - \dfrac{a ( b + r)}{f}$$

- Interestingly we get another pair of conjugates. 
- Now we get to use the extension of the  angle bisector formula to find r  \( HO_2^2 = F_1H \cdot  F_2H  - F_1O_2  \cdot F_2O_2  \)  This is very nice since both products are the conjugates we found above and therefore differences of squares.

$$ r^2 = \left (a^2 - \left(\dfrac{a ( b + r)}{f}\right)^2 \right)  - (f^2 - (b+r)^2)$$

$$r^2 = (a^2 + (b+r)^2) - \left( \left(\dfrac{a ( b + r)}{f}\right)^2 + f^2\right)$$

$$r^2 = (a^2 + (b+r)^2) - \left( \left(\dfrac{a ( b + r)}{\sqrt{a^2-b^2)}} \right )^2 + (a^2 - b^2) \right)$$ 

$$0 = 2b^2 + 2br  - \dfrac{a^2 ( b + r)^2}{a^2 - b^2} $$

$$0 = 2b (\mathbf{b+r}) - \dfrac{a^2 ( \mathbf{b + r})^2}{a^2 - b^2} $$

$$0 = (b+r)\left(2b - \dfrac{a^2 ( b + r)}{a^2 - b^2} \right)$$

So either b = -r which is impossible geometrically or \( 2b =  \dfrac{a^2 ( b + r)}{a^2 - b^2}  \)

Solving for r we get \( r = b - \dfrac{2b^3}{a^2} \) and if b = 1 we can more easily see we're back at the end stage of the analytic solution where \( r = 1 - \dfrac{2}{a^2} \)  From there the same solution falls out again!

