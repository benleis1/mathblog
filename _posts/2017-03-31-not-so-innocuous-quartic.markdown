---
title: "Not so Innocuous Quartic"
date: 2017-03-31 21:46:00 +0000
tags:
  - quartic
  - factorization
  - digression
author: me
---

$x^2 - 16\sqrt{x}  = 12$

What is $x - 2\sqrt{x}$?

The above problem showed up on my feed and my first thought was [](https://www.blogger.com/)that doesn't look too hard it's either a factoring problem or you need to complete the square.  That's the same reaction my son had too when I showed it to him.

But a little substitution ($z = x^2)$ shows that its actual a quartic equation in disguise:

$$z^4 - 16z - 12 = 0$$

The wording strongly suggests that $z^2 - 2z$ or some variant is a factor which is a useful shortcut but that led me down the following path on how to generally factor a quartic.  The good news here is that the equation is already in depressed format with no cubic terms.

Some links for the procedure:

[http://www.maa.org/sites/default/files/Brookfield2007-103574.pdf](http://www.maa.org/sites/default/files/Brookfield2007-103574.pdf)

A little easier to read:

[http://www.sosmath.com/algebra/factor/fac12/fac12.html](http://www.sosmath.com/algebra/factor/fac12/fac12.html)

How it works:

1. First we need to find the resolvent cubic polynomial for $z^4 - 16z - 12 = 0$.

That works out to $R(y) = y^3 + 48y - 256$.

2. Using the rational roots test we only have to look at $\pm2^0$ ... $2^8$ for possible roots but since we only can use roots that are square we only have to test $\pm2^0, \pm2^2, \pm2^4, \pm2^6$ and $\pm2^8$.   Plugging them in we find $2^2=4$ is indeed a root. So there is a rational coefficient factorization for our original quartic.

3.  Now we can use the square root of the resolvent root i.e. 2 and its inverse  to get the following factorization (they are the coefficients of the z term): $$(z^2  - 2z - 2)(z^2 + 2z + 6) = z^4 - 16z - 12 = 0$$

4. At this point we could factor the 2 quadratics and plug the solutions  back in to find  $x - 2\sqrt{x}$  which in terms of z is $z^2 - 2z$.   But we can shortcut slightly for one of the solutions since the  if the first factor is the root then $z^2 - 2z - 2 = 0$ which implies $z^2 - 2z = 2$

5. Interestingly for $z^2 + 2z  + 6 = 0$ we have the two roots $1 \pm i\sqrt{5}$  Plugging either

one into $z^2 - 2z$ and you get -6 anyway!
