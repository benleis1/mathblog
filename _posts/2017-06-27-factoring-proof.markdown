---
title: "Factoring Proof"
date: 2017-06-27 15:53:00 +0000
tags:
  - algebra
  - brainstorming
author: me
---

One of the fun possibilities next year is that we can do problems with polynomials and factoring (at least by the end of the year.) I was reading a post by @cav:  [blog entry link](https://cavmaths.wordpress.com/2017/06/26/proving-products/) with the following problem:

**Can you prove that the product of 4 consecutive odd numbers plus 16 is a perfect square?**

This is a nice group exercise to tie factoring into a larger proof. But one of the followup observations offered online was even more interesting. This works for even numbers too.   (As an aside, getting kids to ask questions along these lines "What about evens?" is a huge goal of mine.)

I'm going to guess the question was phrased as chosen because the factoring of odds is easier:

For symmetry let the odds be e 2n - 3, 2n - 1, 2n + 1 and 2n  + 3:

$$(2n - 3)(2n -1)(2n+1)(2n+3) + 16 = $$

$$(2n-3)(2n+3)(2n - 1)(2n + 1) + 16$$

$$= (4n^2 - 9)(4n^2 - 1) + 16$$

$$ = 16n^4 - 40n^2 + 25$$

$$=  (4n^2 -5)^2$$    

One immediate observation is that if we relax the constraints and let n also be k/2 where k is an integer, we can also get a sequence of evens and the end square is still also an integer. But if given the general problem I probably wouldn't have started this way and instead have constructed:

$$n(n+2)(n+4)(n+6) + 16$$

$$= n^4 + 12n^3 +44n^2 + 48n + 16$$

This is harder (but not impossible see: [not-so-innocuous-quartic]({% post_url 2017-03-31-not-so-innocuous-quartic %}) quartic to factor naively.

One immediate simplification is to assume that this the square of some quadratic \(ax^2 + bx + c\).  From there we get:

$$(ax^2 + bx + c)^2 = a^2x^4 + 2abx^3 + (2ac + b^2)x^2 + 2bcx + c^2$$

So if this works:

$$a^2 = 1$$
$$c^2 = 16$$
$$2ab = 12$$
$$2ac + b^2 = 44$$
$$2bc = 48$$

a and c appear to be 1 and 4 immediately and checking all the other equations 6 works for c in all of them.

So: \(n(n+2)(n+4)(n+6) + 16 = (n^2 + 6n + 4)^2\)

But wait ....

What if we applied the original insight about odds to the general problem?  Given n,n+2,n+4, and n+6 ,  n+ 3 is right in the middle and the product can be rewritten:

$$n(n+2)(n+4)(n+6) + 16 =  $$
$$([n+3] - 3)([n+3]-1)([n+3] +1)([n+3]+3) + 16 $$

We can the rework the calculations from the beginning.

Let  m = n + 3 (for clarity)

$$(m - 3)(m -1)(m+1)(m+3) + 16 = $$

$$(m-3)(m+3)(m - 1)(m + 1) + 16$$

$$= (m^2 - 9)(m^2 - 1) + 16$$

$$ = n^4 - 10n^2 + 25$$

$$ =(m^2 -5)^2$$  

$$ = ([n +3]^2 - 5)^2$$

And we yet again get a general result without descending to solving a quartic!