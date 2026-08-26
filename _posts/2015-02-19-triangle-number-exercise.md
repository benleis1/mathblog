---
title: "Triangle Number  Exercise"
date: 2015-02-19 00:05:00 +0000
tags:
  - triangle numbers
  - brainstorming
author: me
---

*Admin note: This is my first experiment getting latex formatting working for formulas so there's going to be more sigma notation than I would use in class. We're also on a break until next week.*
A triangle number is a sum 1 + 2 + ... + n which is also written $\sum\limits_{i=1}^n i$. 

Two cool theorems that can be fairly easily proved are:

- $\sum\limits_{i=1}^n i$ = $\frac{n(n+1)}{2}$

- $(\sum\limits_{i=1}^n i)^2 = \sum\limits_{i=1}^n i^3$

The first one is not to hard to see and I expect many of the kids have already at least informally discovered it.  The second however is a bit more complicated and I'm considering whether we can walk our way through it during a  session.

There's a geometric interpretation that makes this fairly obvious:

!![](http://www.takayaiwamoto.com/Sums_and_Series/sumcube_1_final.jpg)

**New: cool triple triangle proof [http://t.co/2QwN1sKdeY](http://t.co/2QwN1sKdeY)**

However, I don't see the kids discovering this on their own but I suppose I could provide cut outs and have them do the transforms manually.

The inductive proof on the other hand might be more easily discovered but I foresee two problems.

1. Most of the kids don't have a good grasp on multiplying expressions like $(a + b)^2 = a^2 + 2ab + b^2$.  We could review this fact again (which we did once during the pythagorean theorem session.

2. Secondly I don't think most kids have done any inductive proofs. So it would probably also require a session just on that to work out the principles using simpler problems. **TODO: **what would a good set look like?

With those techniques in hand the following would be workable:

Let $s_1 = (\sum\limits_{i=1}^n i)$

Then

$(\sum\limits_{i=1}^{n+1} i)^2 =  (s_1 + (n+1))^2$

Which expands to:

$s_1^2 + 2*s_1*(n+1) + (n+1)^2$

Then since we also know $s_1 = \frac{n(n+1)}{2}$ we can substitute that into the second term.

$s_1^2 + 2*\frac{n(n+1)}{2}*(n+1) + (n+1)^2$

which simplifies to

$s_1^2 + n(n+1)^2 + (n+1)^2$

And then using the distribute law to factor out n+1 you get:

$s_1^2 + (n + 1) (n+1)^2  = s_1^2 +  (n+1)^3 $

That's enough to use the inductive principle i.e. each successive term means adding the next cube and I think I could move the kids through steps via a worksheet type approach.