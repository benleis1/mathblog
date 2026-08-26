---
title: "Can we get from here to there?"
date: 2015-01-24 21:06:00 +0000
tags:
  - number theory
author: me
---

I've been looking at the five triangles site recently: [fivetriangles.blogspot.com](http://fivetriangles.blogspot.com/) and I like alot of the problems there. I'm now considering whether the most recent one will work for the club.

Given a pair of positive integers *a*, *b*, the operation *a*∗*b* is defined as 23 × *a* + 31 × *b*.
For example, 20∗15 = 23 × 20 + 31 × 15 = 925.

Determine both pairs of positive integers *x*, *y* such that *x*∗*y* = 2015.

For me this problem is just a regular Diophantine equation. So I find the standard form (via Euclid's method or just checking some of the simple combinations)

3 * 31 - 4 * 23  = 1

From there you multiple everything by 2015:

6045 * 31 - 8060* 23 = 2015

which gets you a solution but not with 2 positive integers.

You can then adjust both terms by adding and subtracting 31 * 23 or 713 to find other solutions

So add  and subtract 261 * 23 * 31 ==  8091 * 23 ==  6003 * 31

and you get

42 * 31 + 31 * 23 = 2015 and you're found the first pair.

Scale down once again to

19 * 31 + 62 * 23 and you have the next pair

As you can see the next scaling will cause the first term to go negative so there really are only 2 pairs of positive tuples.

However none of the kids know number theory** so the question is whether this is really solvable for them?**

One thought is that you could notice that 2015 is divisible by 31

31 * 65 = 2015  and then perhaps stumble onto scaling to go down to the 2 solutions. From there if we explored scaling a bit with some easier equations first this might be more obvious. Alternatively,  I could just ask them to find the standard form via trial and error and go from there.

I'm, still brainstorming if I can think a sequence of problems to bridge this gap.