---
title: "12/3 Origami Puzzles"
date: 2018-12-05 22:29:00 +0000
author: me
---

This week started with a unexpectedly interesting discussion about the problem of the week.

Given two right triangles below with some of side lengths supplied: can you figure out which one has the bigger angle (A versus D) without using a calculator:

Versus

In addition to the solutions I expected the kids came up with following two hypotheses:

- You could compare the ratio AB/AC to DF/EF and make a decision based on that.
- You could compare the ratio BC/perimeter to EF/perimeter to make the decision.

I had everyone discuss and come up with questions. But in the moment I wasn't even sure if either was correct so I told everyone to think over the week and come back with either counterexamples or some more proofs that these work.

I spent a little time offline to make sure I have a good non-triginometric explanation for what's going on. 

**Propostion 1:**

Underlying any comparison is the notion of slope. Whichever triangle has a greater slope, has a larger angle.    Can you compare non corresponding part of the triangle and figure anything out?

The short answer: is yes but not exactly in the way my student thought up.

Let's call the side lengths a,b,c  and a', b' and c' and to make comparisons easier scale, normalize both triangles so the hypotenus is length 1:

So now we have $ \frac{a}{c}, \frac{b}{c}, 1 $ and $ \frac{a'}{c'}, \frac{b'}{c'}, 1 $

We want to compare $ \frac{a}{c} $ to $ \frac{b'}{c'} $ and make a decision about the slope.  We can now use the pythagorean theorem to make both sides correspond so  its valid to look at 

$ 1 - (\frac{a}{c})^2  $ versus  $ \frac{b}{c}^2 $ without ever directly computing the 3rd side.  And while this is close to comparing $ \frac{a}{c} $  to $ \frac{b}{c} $ especially with the given values there are some triangles that will slip through the second test.

**Proposition 2:**

Can you compare $ \frac{a}{a + b + c} $ to  $ \frac{a'}{a' + b' + c'} $  and make a decision?

Well let's say slope is $ \frac{b}{a}  $ if we look at the inverse of the test expression:  $ \frac{1}{\frac{a}{a + b + c} }$ this simplifies to  $ 1 + \frac{b}{a} + \frac{c}{a} $  which is very close to being good enough except for the last term and if you normalized the side lengths it would actually work.

So overall I think this assignment was particularly successful and I'm looking forward to the followup discussion.

For the main activity for the day we played with Manifold puzzles: [https://www.brainwright.com/products/display/8007](https://www.brainwright.com/products/display/8007)     I had just seen these a few days ago and was really fascinated. So I ordered my own copy and brought them in.  Basically, these are puzzles in the form of origami where you need to fold the paper and end up with all of the black squares on one side and all of the white squares on the other.   The kids really liked trying these out.  Kids kept running up and asking for new sheets. The only drawback is that its hard to reuse the sheets.  To drive this home, I had all the kids raise their hands and repeat after me  "I solemnly swear to be gentle with the puzzle and not to tear the sheets."

**P.O.T.W**

When is the value of the product

[](https://www.codecogs.com/eqnedit.php?latex=(1%2B%5Cfrac%7B1%7D%7B2%7D)(1%2B%5Cfrac%7B1%7D%7B3%7D)(1%2B%5Cfrac%7B1%7D%7B4%7D)...(1%2B%5Cfrac%7B1%7D%7Bn%7D)%0)

equal to an integer?

