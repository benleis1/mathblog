---
title: "Factorization Redux"
date: 2018-12-28 02:48:00 +0000
tags:
  - digression
  - algebra
  - factorization
author: me
---

Factoring must be in the air ...

I was reading through the latest post by Jo Morgan at:

[http://www.resourceaholic.com/2018/12/factorising-by-inspection.html](http://www.resourceaholic.com/2018/12/factorising-by-inspection.html)

and was surprised yet again with something new to consider about factorization.  Short story, don't waste time considering pairs of coefficients that aren't relatively prime (assuming any common factors have already been taken out).  It makes total sense once you think about it and had not ever crossed my mind before.

That brought to mind an earlier post about factorizing non-monic quadratics which was a larger and more unexpected revelation:

[everything-old-is-new-again]({% post_url 2018-11-02-everything-old-is-new-again %})

And then on top of it I noticed another simple but interesting angle on the process:

Consider this problem:

Like many of its type, this revolves around find a common factor for the general equation:

$$\frac{x^4 + x^2 + 1}{x^2 + x + 1}$$

These are always increasingly difficult as you stray away from quadratics. You can often make headway using Vieta Formulas etc. So for example in this case if there is a factor it must be of the form \(x^2 + ax + 1 \) based on the coefficients.  And one could multiple this out and solve for the variable a.

But this time, I had this instinct "What if I just did the polynomial division?"

![]({{ site.baseurl }}/assets/img/factorization-redux/blogger_014a47c0.jpg)

Sure enough it works mechanically and very easily.  Definitely an idea to store in the math tool chest.

