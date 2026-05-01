---
title: "Taking my shiny hammer and looking for nails"
date: 2019-09-06 15:36:00 +0000
tags:
  - cubics
  - algebra
  - cardano's method
author: me
---

I was thinking some more about the Casus Irreducibilis and other weird forms of solutions derived from Cardano's Method for cubics last night. (See: [Last Post on the Topic]({% post_url 2019-08-26-cardanos-method %}))  and it occurred to me that you could generate some tricky looking algebra problems via this pathway. It also seemed like a fun way to solve a small class of problems.

I was going to generate some examples and play with them myself but then I thought to look back through some archives over at [https://eylemmath.weebly.com/algebra/category/cubic-roots](https://eylemmath.weebly.com/algebra/category/cubic-roots)  and found exactly what I was looking for:

There's a clever solution on Eylem's page (its problem 217) and you should give it a try first and see what approaches come to you.

What's special about this problem to me is that its *almost* exactly in the form of a cubic root.

Review
Once depressed a cubic will be of the form:   \(  y^3 + 3Qy - 2R = 0 \)  The roots can be then found from various combinations of the root conjugates S and T where

- \( S = \sqrt[3]{R  + \sqrt{Q^3 + R^2}}  \)
- \( T = \sqrt[3]{R  - \sqrt{Q^3 + R^2}}  \)

The simplest of the 3 solutions is simply: S + T  while the others are 120 degree rotations of this around the origin.

Looking above we're very close to that form except there's a difference rather than a sum of the root conjugates.  But that's not a problem: we can absorb the -1 into the second cube root to get:

$$  \sqrt[3]{2  + \sqrt{x}} + \sqrt[3]{2 - \sqrt{x}} = 2 $$

Now this is saying that 2 is the root to the cubic where: 

- \( R = 2 \)
- \( Q^3 + R^2 = x  \rightarrow  Q^3 + 4 = x \rightarrow  Q = \sqrt[3]{x - 4} \)

This cubic is \( y^3 + 3y \cdot (\sqrt[3]{x - 4} ) - 4  \)  which looks a bit complicated but we also know at y = 2, its equal to 0

So in other words:   \(  8  + 6 \cdot (\sqrt[3]{x - 4} ) - 4   = 0 \) .

This we can simplify to:   \( \sqrt[3]{x - 4} )  = -\frac{2}{3} \) and then we just have to cube both sides to get the final solution for x:   

$$ x =  4 -  \frac{8}{27} = \frac{100}{27} $$

**Nifty!  Well perhaps overly complicated but it does show the generating structure for the problem fairly well.**

