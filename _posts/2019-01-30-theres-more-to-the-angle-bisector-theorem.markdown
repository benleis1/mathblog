---
title: "There's more to the Angle Bisector Theorem"
date: 2019-01-30 01:45:00 +0000
tags:
  - angle bisector theorem
  - geometry
author: me
---

I just ran into a few very simple extensions of the angle bisector theorem which I've never noticed before. Since I couldn't easily find this anywhere online it seems interesting enough to note here.

Subsegment Lengths

![]({{ site.baseurl }}/assets/img/theres-more-to-the-angle-bisector-theorem/blogger_a9b90f3e.PNG)

If DB is the angle bisector of triangle ABC and side AC = b, side BC = a and side AB = c

Then   \( m= \dfrac{a \cdot b}{a+c} \) and \( n = \dfrac{b \cdot c}{a+c} \)

This is proved as following:

- From the angle bisector Theorem \( \dfrac{m}{n} = \dfrac{a}{c} \)
- So \( m = n \cdot \dfrac{a}{c} \)
- Then substitute in n = b - m   to get \( m = (b - m) \dfrac{a}{c} \)
- Solve for m:    \( (1 + \dfrac{a}{c}) \cdot m = \dfrac{ab}{c} \)

- That then simplifies to \( m = \dfrac{a \cdot b}{a+c} \) 

Bisector Length

A second also useful extension is that we can derive an expression for the bisector BD in terms of  other segments

![]({{ site.baseurl }}/assets/img/theres-more-to-the-angle-bisector-theorem/blogger_b88bc56f.PNG)

- Let  side AC =  a,   BC = a, BD = d, AC = b AD = b and CD = n as labelled above.
- Using [Stewart's Theorem](https://en.wikipedia.org/wiki/Stewart%27s_theorem) we get \( a^2 \cdot m + c^2 \cdot n = b (m \cdot n + d^2) \) but this can simplified.
- From the angle bisector theorem \( a = \dfrac{cn}{m} \) and \( c  = \dfrac{am}{n} \)
- Substituting those into the left hand side we get:  \( acn + acm = b (m \cdot n + d^2) \)
- Combine:   \( acn + acm  = (m + n)ac = abc \)
- So \( abc = b (m \cdot n + d^2) \) We can then eliminate a b on each side and rearrange:

$$ d^2 = a \cdot c  -  m \cdot n $$

Exterior Angle Bisector Theorem

![]({{ site.baseurl }}/assets/img/theres-more-to-the-angle-bisector-theorem/blogger_8e5053b6.PNG)

It turns out there is also an exterior angle bisector theorem!  

- Given a triangle ABC, let angle BAC = x and angle ABC = y.  Then bisect the exterior angle of B as show above and project down to point E.
- Then create a parallel line AF to BC.

- By angle chasing : \( \angle{CBE} = \dfrac{180 -y} {2} = 90 - \dfrac{y}{2}\) 
- \( \angle{BCE} = x + y \)
- \( \angle{BAF} = \angle{FAC} - \angle{BAC}  = x + y  - x = y \)
- \(\angle{ABF} = 180 - (\angle{ABC} + \angle{CBE}) =  180 - (y +   90 - \dfrac{y}{2}) =   90 - \dfrac{y}{2}  \)
- \( \angle{AFE} = 180 - (\angle{ABF} + \angle{BAF}) = 180 - (  90 - \dfrac{y}{2}  + y) =   90  - \dfrac{y}{2} \)

So Triangle ABF turns out to be isosceles and AF = AB = c.  Since triangle AFE is similar to CBE (from our original parallel line) we finally get the desired ratio:

$\dfrac{d}{a} = \dfrac{b+d}{c}$

Exterior Bisector Lengths

Its probably not too surprising that we can apply Stewart's law again and get a formula for all the lengths above:

We start with:  \(e^2 \cdot b + c^2 \cdot d = (b + d)(b\cdot d + a^2) \)

- From the ratio above we have \( d = \dfrac{a(b+d)}{c} \)

- Substituting that gives us: \(e^2 \cdot b + ac(b+d) = (b + d)(b\cdot d + a^2) \)

- Collecting the (b+d) terms : \(e^2  = \dfrac{(b + d)}{b}(b\cdot d + a^2 -  ac) \)
- Note \((b + d)(a - c) =  ab + ad - cd  - bc\) and again from the ratio ab + ad = cd so combined we get  \((b + d)(a - c) =  -bc  \)

- So \(e^2  =  (b +d)d  + \frac{a}{b}(b+d)(a-c)  =  (b +d)d   - ac  \)  which is very similar to the equivalent angle bisector formula.

