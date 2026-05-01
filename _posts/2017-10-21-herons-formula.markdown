---
title: "Heron's Formula"
date: 2017-10-21 04:34:00 +0000
tags:
  - geometry
  - herons formula
  - brainstorming
author: me
---

The MathCounts guide for the year arrived today and I was looking over the problems. The following one caught my eye.

*Given a triangle of side lengths 13,14, and 15. What is the radius of the largest circle inside it?*

![]({{ site.baseurl }}/assets/img/herons-formula/blogger_8255e8ad.PNG)

This is a slightly convoluted way of saying what is the radius of  the incircle. I then thought about it for a moment and came up with the following approach.

- Find the area with Heron's Formula  = $\sqrt{s(s-a)(s-b)(s-c)}$  $$\sqrt{21\cdot6\cdot7\cdot8} = 84$$
- The area is also $\frac{1}{2} r \cdot 2s$  So in this case that means r = 4.

My second thought was I don't think any of the kids in Math Club know Heron's formula. How would they approach this?  And then I realized they could drop an altitude and compute it via the Pythagorean theorem.  That would get them to being able to find the area from the standard formula $\frac{1}{2}$base x height.

Note: if you were lucky you might pick the base to be 14 and then find its made up of 2 Pythagorean triples the 5-12-13 and 9-12-15 but I'm going to ignore that possibility in favor of some more investigation.

![]({{ site.baseurl }}/assets/img/herons-formula/blogger_bab9b761.PNG)

From here   $14^2 - x^2 = 15^2  - (13-x)^2$   All the x^2 terms cancel out and you're left with a simple linear equation that reduces to $x = \frac{70}{13}$ .

From there you reapply the Pythagorean theorem to find:

$$h=\sqrt{14^2 -\frac{70^2}{13^2}} = 7 \sqrt{\frac{4\cdot 13^2 - 100}{13^2}}$$

$$  =  7 \frac{\sqrt{576}}{13} = \frac{168}{13} $$

Now you can compute the area =  $\frac{1}{2} \cdot 13 \cdot  \frac{168}{13} = 84 $ again.

And then I had an epiphany (which I'm sure has occurred in many textbooks.)  This would be a great intro to actually derive Heron's formula.  After finishing the concrete problem redo it with side lengths of a, b, and c.    

![]({{ site.baseurl }}/assets/img/herons-formula/blogger_ce4adc69.PNG)

Repeating our steps. 

  $b^2 - x^2 = c^2  - (a-x)^2$     The x^2 terms cancel out again leaving:

$$ x = \frac{a^2 + b^2 - c^2}{2a} $$

You again apply the Pythagorean theorem to find the altitude:

$$ h = \frac{\sqrt{4a^2b^2 - (a^2 + b^2 - c^2)^2}}{2a}$$

This looks complex at first but if stare at it long enough there are a lot of differences of square here that we can take advantage of.  *This would be a good time to review *

*$$a^2 - b^2 = (a-b)(a+b)$$*

So first  $4a^2b^2 - (a^2 + b^2 - c^2)^2 = (2ab + (a^2 + b^2  - c^2))(2ab  - (a^2 + b^2 -c^2))$

You then can combine the a and b terms to get:

$$ ((a+b)^2  - c^2)(c^2 - (a-b)^2)$$

That's nifty because we can reapply the difference of squares formula again:

$$((a+b)+c)((a+b)-c)(c + (a -b))(c - (a - b))$$

Putting this back into the height formula and with a little rearranging we get

$$ Area  = \frac{1}{2} a \cdot \frac{ \sqrt{(a+b+c)(a+b -c)(a+c-b)(b+c-a)}}{2a} $$

We're now ready to substitute the semiperimeter s  = $\frac{(a+b+c)}{2}$ in which results in:

$$ Area  = \frac{1}{2} a \cdot \frac{ \sqrt{(2s)(2s -2c)(2s-2b)(2s - 2a)}}{2a} $$

$$           =  \frac{1}{2} a \cdot \frac{ \sqrt{ 16 \cdot  s(s -c)(s-b)(s - a)}}{2a} $$

$$           =  \sqrt{s(s -c)(s-b)(s - a)} $$

I'm guessing this would take almost the full hour especially if I let the kids experiment on their own first.

As a followup: something nifty happens when you investigate the Pythagorean triple triangles. The numbers in the formula are always the side lengths of the 2 triangles and the square/incircle radius that make them up.

This is not a coincidence and its easy to prove. Another good extension for a right triangle's in circle radius:

$$r = \frac{ab}{a+b+c} = s - c $$ 

[**Note: from the future: perhaps deriving Heron's Formula is interesting but long run using the law of Cosines to do the same thing is perhaps the better mainstream path.  They are essentially the same but the latter has more mainstream connections] **