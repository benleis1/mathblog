---
title: "Everything old is new again"
date: 2018-11-02 16:44:00 +0000
tags:
  - distributive property
  - digression
  - slide and divide
  - quadratic
  - factorization
author: me
---

This will be a short post but I'm excited enough to write this all down. Yesterday I had one of those moments where you go through a range of feelings. It all started with this picture:

![]({{ site.baseurl }}/assets/img/everything-old-is-new-again/blogger_d86248b7.jpg)(slide and divide worksheet)

The poster was legitimately complaining about an awful worksheet. There is no magic in mathematics. Its a logical process with a reason for everything that's done. This worksheet has taken that and turned it into what looks like a semi-random and arbitrary process.

But it does work out and the question is what's going on? I was on the bus when I was reading this and  quickly did a check on the general form of a quadratic:

$$(kx - p)(x -q)  =  kx^2 + (-kq - p)x + pq$$

versus

$$(x -p)(x - kq) = x^2 - (-kq - p)x  + kpq$$

Sure enough via the distributive law the two forms share a common middle coefficient and the other two coefficients differ only by k.

At that point,  I thought "Well it works but it seems to obscure the process rather than help." I still didn't like it.

And then I saws a link back to Bowen Kerin's blog: [https://t.co/4e3mbCDbmn](https://t.co/4e3mbCDbmn) with a full explanation. Suddenly by shifting the framework just a bit this went from an oddity to something really beautiful. What's happening here is an early example of the power of substitution (Something that occurs continuously in the curriculum and worth emphasizing every time it does)

The better model is transforming:

$ax^2 + bx + c$  to $ \frac{1}{a}(a^2x^2 + abx + ac) =  \frac{1}{a}(  (ax)^2 + b(ax) + ac ) $

Then you substitute w = ax and suddenly you have a reframed monic equation that is potentially easier to factor i.e.  $\frac{1}{a}(w^2 + bw + ac) $

What's also cool in practice when you re-substitute x back in, the extra a term  always cancels out and often factors in interesting ways split between the terms.

Reworked Example:

$$3x^2 - 13x + 10 = 0$$

$$\frac{1}{3} ((3x)^2 -13 (3x) + 30) = 0$$

$$ \frac{1}{3} (w^2 - 13w + 30) = 0$$

$$ \frac{1}{3}(w - 10)(w-3) = 0$$

$$ \frac{1}{3}(3x - 10)(3x - 3) = 0$$

$$ \frac{1}{3}(3x- 10)3 \cdot(x-1) = 0$$

$$ (x - 10)(3x -  1) = 0$$

This is general in usage and can be applied to higher degree polynomials. So it can be of use when doing the rational roots test for example. But even if you never use it in practice, its lovely to see and proof that even in something as quotidian as factoring there are new things to be learned.