---
title: "Good Problem but Guessable"
date: 2019-04-12 15:25:00 +0000
tags:
  - purple comet
author: me
---

Last week as usual I scanned through the [Purple Comet](http://purplecomet.org/) problems looking for interesting one this year.  I'm usually drawn to geometry problems but this Algebra one in the middle actually evoked my strongest reaction and is the subject of this post:

Let a, b, c, and d be prime numbers with a ≥ b ≥ c ≥ d > 0.

Suppose $ a^2 + 2b^2 + c^2 + 2d^2 = 2(ab + bc − cd + da) $ . Find 4a + 3b + 2c + d.

This problem is a fairly interesting exercise in logic and number theory. What immediately jumped out at me was squares on one side and the double products on the other so I started by completing the square a few ways:

- $  (a-d)^2 + (c+d)^2 + 2b^2 = 2b(a + c) $
- $  (a - b)^2 + (b-c)^2 + 2d^2 = 2d( a - c) $ 

There are actually 2 other forms but I missed these initially and it turns out these two are the more interesting ones. What I immediately noticed was that this implied the sum of the two squares was a multiple of 2b in the first equation and 2d in the second one.

I did a quick check that squaring (4a + 3b + 2c + d) seemed uninteresting and that it was likely just an obfuscation.

And then I just wanted to experiment and see the behavior: so I tried computing all 2's (realized the numbers had to be different $ 6x^2 \neq 4x^2 $, 2's and 3's  and then 2. 3, 5, 7 and bingo immediately found the answer.

**That was oddly disappointing.** This problem is asymmetric  The simple guessable solutions are too easy to enumerate versus the much more satisfying logic.  In fact it took me 25 minutes more to do this "correctly"

- I worked out all 4 possible completing the square forms.
- I compared the value of the left hand to right hand sides.
- Next I looked at parity wanting to rule out whether 2 was one or more of the primes:

Consider the differences in the second equation: $  (a-b)^2 + (b-c)^2 + 2d^2 = 2d( a - c) $   The difference of all primes is even except if one of them is 2.   Supposed d  was greater than 2 and by extension all the other variables must also be odds.   

Let:  2m = a - b,  2n =  b - c and 2m + 2n  = a - c

Note:* this is a key point: this form of the completed squares is more interesting since it includes the *

*3 differences in sizes and b is in the middle so a - c = (a - b) + (b - c).*

Then:  $ 4m^2 + 4n^2 + 2d^2 = 2d(2m + 2n) $   Both of the first two left hand terms are multiples of 4 as is the right hand side. Divisibility requires $ 2d^2 $ must be a multiple of four as well. But that's impossible if d is odd.  So by contradiction d = 2.

I then had to go backwards with my known answer values and try various things out. Eventually I came back to the same equation again but this time with d filled in: $ 4m^2 + 4n^2 + 8 = 4m + 4n  => m^2 + n^2 + 2 = 2m + 2n $  and realized I should complete the square again: $ (m -1)^2 + (n-1)^2 = 0 $  This only has solutions if m and n  are both 1.  Or in other words a, b, and c are all 2 apart i..e triple primes.  That only occurs once for 3,5 and 7.  Modular arithmetic will show after that every third number separated by a gap of 2 must be a multiple of 3.

QED

