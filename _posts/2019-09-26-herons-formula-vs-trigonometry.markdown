---
title: "Heron's Formula vs Trigonometry"
date: 2019-09-26 15:46:00 +0000
tags:
  - digression
  - herons formula
  - trigonometry
  - piled squares
author: me
---

This random pedagogical thought occurred to me today: Both  [Heron's Formula](https://blog.mathoffthegrid.com/2017/10/herons-formula.html) and the Law of Cosines provide ways to find the area of a triangle with just its 3 sides. Does it makes sense to teach both and/or is there much efficiency difference in using them?

**Heron's Formula **

Given a triangle with side lengths a,b and c.  Let \(s = \dfrac{a + b + c}{2} \)

Area = \( \sqrt{s \cdot (s - a) \cdot (s - b) \cdot (s -c) }  \)

This tends to be messy given the large product that you then need to find the square root of.

**Law of Cosines:**

Given the same triangle with side lengths a,b and c we can also find area via trigonometry.  (Note: *how often is this emphasized as possible?)*

Law of Cosines: $ a^2 + b^2 - 2ab \cos \theta = c^2 $

Isolate cos: $ \cos \theta = \dfrac{((a^2  + b^2) - c^2)}{2ab} $

Derive sin: $ \sin \theta = \sqrt{ 1  - \frac{((a^2  + b^2) - c^2)^2}{4a^2b^2}} = \dfrac{\sqrt{ 4a^2b^2  -((a^2  + b^2) -  c^2)^2}}{2ab}  $

Area =  \( \frac{1}{2} ab \cdot  \sin \theta = \dfrac{1}{4} \sqrt{ 4a^2b^2  -((a^2  + b^2) -  c^2)^2} \)

Notably, if I kept simplifying the trigonometric version I would eventually end up with Heron's formula so they are not too far apart But in practice the arithmetic looks a bit different.

**Why is this Happening?**

In one sense since the side lengths do uniquely determine the area of a triangle its not surprising that you get the same formula via both methods. On the other hand it still seemed mysterious to me at first.

But in  fact both methods are built on the same construction and ultimately the Pythagorean Theorem.

To refresh: back in the original post: we derive Heron's Formula by:

!![]({{ site.baseurl }}/assets/img/herons-formula-vs-trigonometry/blogger_8f96b889.PNG)

1. splitting a triangle into two right triangles

2. Solving for the length of the bases from the Pythagorean theorem.

3. Using that to find the height (via the Pythagorean Theorem again).

4. Multiplying the two dimensions that have been found and simplifying the expression.

It turns out we derive the law of Cosines from the same construction.

1. Split the triangle into the same two right triangles.

2. Use Trig to get an expression for the one base i.e.  b cos theta.

3. Setting up the same equality between the two sides as above in step 2.

4. This time the algebraic simplification instead leads to the law of cosines which is mainly a consequence of us having a name for the side length rather than moving on with the "x" value like we did in Heron's formula.

5. The area Sine formula is the exact equivalent of us then calculating the height of the triangle.

In retrospect, its more surprising that the two forms look as different than they do and its mostly due to what terms are kept and how the trig approach preserves many of the intermediate steps Heron's Formula has condensed.

Computation Example:  

Taking the paradigmatic 13-14-15 triangle which has very friendly values.

!![]({{ site.baseurl }}/assets/img/herons-formula-vs-trigonometry/blogger_8f96b889.PNG)

Via Heron's Formula:

- \( s =  \frac{1}{2} ( 13  + 14 + 15)  = 21 \)
- Area = \( \sqrt{21 \cdot 6 \cdot 7 \cdot  8 \cdot } = \sqrt{7056} \)
- Perhaps you notice that \( 21 \cdot 6 \cdot 7 \cdot  8 \cdot  = 7^2 \cdot 3^2 \cdot 4^2  \)
- In either case you end up with 84 after more or less work.

Via Trig:

- From a *friendlier s*ide:  \( 13^2 + 14^2 - 2 \cdot 13 \cdot 14 \cos \theta = 14^2 \)
- \( \cos \theta = \frac{140}{2 \cdot 13 \cdot 14} = \frac{5}{13} \)
- \( \sin  \theta = \frac {12}{13} \) (You might recognize the 5 - 12 -13 to go straight here)
- Area = \( \frac{1}{2} \cdot 13 \cdot 14 \cdot \frac{12}{13} = 84 \)

- From the *least friendly* side:   \( 13^2 + 15^2 - 2 \cdot 13 \cdot 15 \cos \theta = 14^2 \)
- \( \cos \theta = \frac{198}{2 \cdot 13 \cdot 15} = \frac{33}{13 \cdot 5}  \)
- \( \sin  \theta = \frac {\sqrt{65^2 - 33^2}}{13}  = \frac{\sqrt{3136}}{65}\)
- Now either you work this out or perhaps you  use a difference of squares to note: \( 65^2 - 33^2 = 98 \cdot 32 = 49 \cdot 64 \) which is much easier to take a square root of.
- Area = \( \frac{1}{2} \cdot 13 \cdot 15 \cdot \frac{56}{65} = 84 \)

Overall its a bit of a wash: although even here Heron's Formula generated the larger product to take a square root of. Arguably it might be easier to see the simplifications with it though.

What happens with not so nice values? Generally the trig based formula because it breaks things up a bit has smaller numbers to square root. Beyond that overall its not radically different.  If the side lengths are square roots the trig formula gains quite a bit of utility. If the perimeter is odd, the semi perimeter is a fraction that makes the product a slight bit harder to compute with Heron's formula.

So In sum: maybe it does make sense to just concentrate on Trig after maybe deriving Heron's formula as an advanced exercise via the Pythagorean Theorem and or the trig.

