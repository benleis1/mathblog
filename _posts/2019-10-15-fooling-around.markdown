---
title: "Fooling Around"
date: 2019-10-15 19:43:00 +0000
author: me
---

I came across the following interesting piece of Algebra in my son's textbook.  Solve for  a and b $ \in \mathbb{R}$:

$$ a  +  \dfrac{a + 8b}{a^2 + b^2} = 2$$

$$ b  + \dfrac{8a - b}{a^2 + b^2} = 0$$

Straight Algebra

This is a straightforward approach based on two observations. The first was the square terms are the most problematic but they can be isolated and then removed.  The second thought was initially that adding or subtracting the equations might be interesting. But after fooling around a bit I came to the idea that multiplying them was even more promising. This was motivated by the fact that the right hand would also be zero in any such product.

First Isolate $ a^2 + b^2 $ from both equations. We can use this directly to create a new ratio equation and also for substitution purposes.

- $ a^2 + b^2  = \dfrac{a+8b}{2 - a}$
- $ a^2 + b^2 = \dfrac{b - 8a}{b}$

Multiply the two initial equations together. Note: how the middle term reduces to a constant 8.  When this happened I was fairly certain I was onto something:

- $ a \cdot b + \dfrac{8a^2 -ab + ab  + 8b^2}{a^2 + b^2} + \dfrac{(a  + 8b)(b - 8a)}{(a^2 +b^2)^2} = 0$
- $  a \cdot b + 8  + \dfrac{(a  + 8b)(b - 8a)}{(a^2 +b^2)^2}  = 0 $

Substitute in the two different expressions for $ a^2 + b^2 $ from above  which conveniently cancel out:

- $  ab + 8  + \dfrac{(a  + 8b)(8a - b) \cdot (2 -a) \cdot b }{(a+ 8b)(b-8a)}    = 0 $
- $  ab + 8  +  (2 -a) \cdot -b  = 0 $
- $  8 + 2ab - 2b = 0 $
- $ 2 ab  - 2b = -8  \text{ or }   a - 1 = \dfrac{-4}{b} $ 

Then going back to the initial isolated expressions for $a^2 + b^2 $ we'll use the equivalences above twice:

- $\dfrac{a+8b}{2 - a} = \dfrac{b - 8a}{b}$
- Cross multiplying the ratio we get: $ ab + 8b^2 = 2b - 16a  - ab + 8a^2$ 
- $ 8b^2 = 8a^2 - 16a - (2ab - 2b) $   
- First substituion:  $ 8b^2 = 8a^2 - 16a + 8$
- $ b^2 = (a - 1)^2$
-  Substituting for a -1 again: $ b^2 = \left(\dfrac{-4}{b}\right)^2$
- $ b^4 = 16  $   which implies  that  $ b = \pm 2 $ so the overall solutions are then (-1,2) and (3, -2)

An Interesting Substitution

Noticing the sum of squares is the magnitude of the complex number a  + bi suggests trying out the following substitution:

- $z = a + bi$
- $2a = z + \bar{z}$
- $2b =  \bar{z} \cdot i  - z \cdot i $
- $a^2 + b^2 =  z \cdot \bar{z} $

Its easiest to apply if we multiply both equations by 2 first:

So $  2a  +  \dfrac{2a + 16b}{a^2 + b^2} = 4 $  becomes  $ z + \bar{z} + \dfrac{ z + \bar{z} + 8(\bar{z} \cdot i  - z \cdot i )}{z \cdot \bar{z}} = 4 $

And $  2b  + \dfrac{16a - 2b}{a^2 + b^2} = 0 $ becomes  $ \bar{z} \cdot i  - z \cdot i + \dfrac{8(z + \bar{z}) -   (\bar{z} \cdot i  - z \cdot i)}{ z \cdot \bar{z} } = 0 $

Looking at the second equation, it becomes apparent its almost the first one multiplied by i, so we'll multiply it by i again so its more similar to get:

$  z  - \bar{z}  + \dfrac{8i(z + \bar{z})  +   (\bar{z} - z) }{ z \cdot \bar{z}} = 0  $

- Now we can add the 2 new equations together and cancel a bunch of terms: $  2z  + \dfrac{16i \bar{z}  + 2\bar{z}}{ z \cdot \bar{z}} = 4  $
- The second term simplifies: $ 2z  + \dfrac{16i   + 2}{ z } = 4 $ 
- $ 2z^2 + 16i + 2 = 4z  \rightarrow   z^2 - 2z + 1 = -8i \rightarrow (z - 1)^2 = -8i $

We just have to find the square root of -8i  to finish this:

- $ (c + di)^2 =  c^2  + 2cd \cdot i -  d^2 = -8i $
- $ c^2 - d^2 = 0 $  and  $ 2cd = -8 $
- Combining the roots are either 2 + -2i or -2 + 2i

To find the original solution we add 1 to both roots to once again get (3, -2) and (-1, 2)

