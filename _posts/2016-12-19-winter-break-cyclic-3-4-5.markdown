---
title: "Winter break cyclic 3-4-5"
date: 2016-12-19 21:09:00 +0000
tags:
  - 3-4-5
  - digression
  - geometry
author: me
---

This is another exercise in documenting geometry problem solving. I chose this problem because again it has a 3-4-5 triangle within it and the overall setup is very simple.  It also shows how one can circle around the correct solution,  as it were, before coming to it.  

**Given cyclic quadrilateral ABCD where  ABC is a right triangle and AB = BC = 5  and **

**the diagonal BD = 7 find the area of ADC.**

![]({{ site.baseurl }}/assets/img/winter-break-cyclic-3-4-5/blogger_79c30118.png)

Thought process

1. Angle chasing:  $\triangle{ABC}$ is right isosceleses. Since  ABCD is a cyclic quadrilateral, that means we can angle chase a bunch i.e. $\angle{BDC} = \angle{BAC} =45^\circ$. 

2. Cyclic also means that the product of diagonal portions is equal i.e. $AE \cdot EC = DE \cdot BE$

3. Also there are a bunch of similar triangles: $ \triangle{AED} \sim \triangle{BCE} $ and $ \triangle{CDE} \sim \triangle{ABE} $

4. Realize 2 and 3 are the same basically saying the same thing.

5. At this point I had a general idea that I'd need to use the length of both diagonals as well as  the similarity of the triangles to find the area.

5. I started the algebra with the Pythagorean theorem and similar triangles to find the lengths of AE and ED.  This looked fairly messy even going in although generally solvable.

6. So I stopped and checked with the angle bisector theorem around $ \angle{ADC} $ and realized that produced nothing new.

7.  I already strongly suspected just on visual inspection that the missing part was a 3-4-5 triangle. So once again I paused and checked in geogebra that my hunch was correct. (it was).

8. Then I started grinding through my first approach:  let a = BE and b = CE then:

$ \frac{BE}{EC} = \frac{AE}{ED}$ or $ \frac{a}{b}=\frac{5 \sqrt{2} - b}{7-a} $

Which simplifies to $ 7a - a^2 = 5\sqrt{2}b - b^2 $

In addition using the Pythagorean theorem: $ \overline{AD}^2 + \overline{CD}^2 = 50 $

Then applying triangle proportionality $ \overline{AD} = \frac{5}{a} * (5\sqrt(2) - b)) $ and  $ \overline{CD} = \frac{5}{a} * b $

When combined you finally end up with:

$$ 50 = \frac{25}{a^2}((5\sqrt(2) - b)^2 + b^2)$$

$$ 2a^2 = 50 - 10\sqrt{2}b  + 2b^2$$

$$ a^2 = 25  - (5\sqrt{2}b - b^2)$$

$$ a^2 = 25 - 7a + a^2$$

$$ a = \frac{25}{7}$$

9. I started to  solve for b after which point I could find AD and CD. But this was even messier looking than above and was heading towards an ugly quadratic equation. 

$$ \frac{25 \cdot 24}{49}  = (5\sqrt{2} -b) \cdot b $$

10. That looked super messy but I realized what I really wanted was $ 1/2 * AD * DC  $ which

comes out to $  1/2 \cdot \frac{25}{a^2} (5\sqrt{2} - b) \cdot b $ and you can substitute with the two derived results above to find the answer.

11. I was dissatisfied with the opaqueness and algebra of this method plus it never showed the 3-4-5 clearly so I started from scratch.

12. This time I played with the $\angle{ADC}$. First I stated thinking about breaking up the 3-4-5 into a square and the various 1:2 and 1:3 triangles. But then I realized that I had two 45 degree angles that  could be extended and we know the lengths of the sides of those triangle  and from there the drawing below immediately fell out.  Framed this way the problem was much simpler.

*![]({{ site.baseurl }}/assets/img/winter-break-cyclic-3-4-5/blogger_f8574aef.jpg)