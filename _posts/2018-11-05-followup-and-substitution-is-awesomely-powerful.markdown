---
title: "Followup: And Substitution is Awesome(ly powerful)"
date: 2018-11-05 05:43:00 +0000
author: me
---

To continue why I  think emphasizing substitution early is a good idea see: [Previous Post]({% post_url 2018-11-02-everything-old-is-new-again %})

Here's a recent more complicated algebraic problem from @_eylem_99:

$x^2 - 16 \sqrt{x} = 12$.  What is $x - 2\sqrt{x}$?

[**And I just realized I've talked about this one before: [not-so-innocuous-quartic]({% post_url 2017-03-31-not-so-innocuous-quartic %})] **

As usual I do a quick substitution  let $ y =  \sqrt{x} $ to get a better picture of the equation (and make it easier to manipulate) and get $ y^4  - 16y - 12 = 0 $  So this is really a quartic in disguise where you want to find $y^2 - 2y $.

Brute Force Attack
My first instinct is to always factor if you can:  in this case there is no easy rational root but it must be the product of two quadratics  and it quickly becomes apparent that they must be semi complementary i.e.  $(y^2 - ay + b)(y^2 + ay - c) = 0 $   This leads to the further system:

$b + c = a^2$

$ab - ac = -16 $

$bc = -12 $

Which is not terribly easy to solve although a factoring approach for the constant term  can lead eventually to: $ (y^2 + 2y - 2)(y^2 - 2y + 6) = 0$  At which point the first factor/root contains the solution if $y^2 + 2y - 2 = 0  $ then $y^2 + 2y = 2$  ***Overall this is fairly hairy - see the post lined above for more details about the formal method***

Clever Factoring
A second approach relies on clever factoring and trying to complete the square:

1.   $ x^2 = 16 \sqrt{x} + 12 $

2.   Add  4x  + 4 :  $ x^2 + 4x + 4 = 16 \sqrt{x} + 4x + 16 $

3.  $(x + 2)^2  = (2\sqrt{x} + 4)^2 $

From there   its easy to take a square root and  solve for x to get $ x - 2 \sqrt{x} = 2 $  but  finding that exact extra term to create a square on both sides is an** exercise in intuition and experimentation.**

Substitution
I think a semi recursive substitution provides a more natural solution i.e. less need for an intuitive leap:

1.  Move everything to the side as above: $ x^2 = 16 \sqrt{x} + 12 $

2.  let  $x - 2\sqrt{x} =  k $ then $ x =  k + 2\sqrt{x} $

3. Square that term:   $ x^2 = k^2 + 4k\sqrt{x} + 4x $

4. And then substitute for x again: $ x^2 = k^2 + 4k\sqrt{x} + 4(k + 2\sqrt{x}) $

5. Setting that equal to the original equation  $  k^2 + 4k = 12 $ and  $ 4k + 8 = 16 $.  The easier linear equation implies k = 2 and that is consistent with the  quadratic so indeed:  $x - 2\sqrt{x} =  2 $

**[Addon]**

[https://en.wikipedia.org/wiki/Reciprocal_polynomial](https://en.wikipedia.org/wiki/Reciprocal_polynomial)

This all follows once you substitute y = 1/x in a polynomial but its still surprisingly beautiful.

