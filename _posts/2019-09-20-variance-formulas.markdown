---
title: "Variance Formulas"
date: 2019-09-20 17:52:00 +0000
tags:
  - statistics
author: me
---

I've been dabbling in Statistics to help my older son out who has encountered them for the first time in a Biology Class. As a result, an interesting observation from David Butler caught my attention last night. Perhaps this pairs well with last post on Stats in HS as well.

Normally for a sample group the variance is defined as:

 $$Var(X) = \dfrac{1}{n} \sum_{i=1}^{n}(x_i - \bar{x})^2 \text{ where } \bar{x} \text { is the mean of the samples. }$$

Note: this only approaches the population variance and mean as the sample sizes grow and various corrections are usually attempted to estimate the true population values.   Conceptually variance is measuring the spread of values and its the sum of the squares of the various deltas of samples from the overall mean.  (Why we'd want to use this measure of spread with its squares vs. something simpler like Mean Deviation  is a longer topic.)

What came up in the conversation last night was the notion that you could also calculate the variance by summing the distance between every pair of sample points without using the mean.

$$Var(X)   = \dfrac{1}{n^2} \sum_{i=1}^{n}\sum_{j=i}^{n} (x_i -  x_j)^2 $$

The first conceptual point that I needed to unravel was whether the claim was you could generate the variance for the sample set or the entire population. After some mental exercises I decided this must  be only for sample set variance. My thought experiment went something like this: what must be happening is in the permutation you're implicitly canceling out the differences between the values and generating the sample mean.  If the entire sample was highly biased, there is no way this process  could somehow compensate for that error.

Secondly: I noticed the first formula is multiplied by the reciprocal of n by definition while the second is in terms of the reciprocal of n^2.  (Why?)

Finally: I chose the formulation above which guarantees no pair of samples is repeated. If you choose to do this with a full permutation each pair will get counted twice i.e. (a,b) and (b,a)  and you then need to divide the result by 2 to compensate for over-counting.

At this point, I had my hand-waving about why this probably worked but I started thinking what would happen if you substituted the mean back into the original formula and expanded.  This seemed like it would generate something not that far from the second formulation and worth trying out.

So I did but with an example set of size 3 first to see the structure more clearly:

Example n = 3

I'm going to a, b, and c as the sample values in this case so:

$$Var(X) = \dfrac{1}{3} \sum (a - \dfrac{a+b+c}{3})^2  \text{ where we permute the variables since everything is symmetric}$$ 

Factoring out the constant fraction we get:

$$Var(X) = \dfrac{1}{27}  \sum (2a - b - c)^2 $$

$$Var(X) = \dfrac{1}{27}  \sum (4a^2 + b^2 + c^2  -4ab -4ac + 2bc) $$

The symmetry comes into play now with the 3 pieces of this sum but here's an expanded version of the inner part:

$$ 4a^2 + b^2 + c^2  -4ab -4ac + 2bc  $$

$$ a^2   + 4b^2 + c^2 - 4ab  + 2ac  - 4bc $$

$$ a^2   + b^2 + c^2  + 2ab  - 4ac  - 4bc $$

which sums to: $ 6a^2   + 6b^2 + 6c^2  - 6ab  - 6ac  - 6bc $

I'm going to factor out 3 so all together we end up with:
$$Var(X) = \dfrac{1}{9}  (2a^2 + 2b^2 + 2c^2  -2ab -2ac  - 2bc) = \dfrac{1}{9} \left( [a^2 -2ab + b^2] + [a^2 - 2ac + c^2] + [b^2 - 2bc + c^2]\right)  =  \dfrac{1}{9}\left( (a-b)^2 + (a-c)^2 + (b-c)^2 \right)  $$

And we're done for n = 3.  Note: You can see at the middle steps where first an extra factor of 1/3^2 is entering the formula and then its reduced to just 1/3.  At this point because I like verification, I plugged some sample sets in just to test everything out and I'll leave that as an exercise for the reader to experiment with.

**Generalizing**

Okay this works for 3 but  does it generalize? This time keeping my model in hand I repeated the process more abstractly  (refer to above if anything seems confusing):

$$Var(X) = \dfrac{1}{n} \sum (x_i - \dfrac{\sum_{j=1}^n x_j }{n})^2  \text{ where we permute the variables since everything is symmetric}$$ 

Factoring out the constant fraction $ \frac{1}{n^2} $ we get:

$$Var(X) = \dfrac{1}{n^3} \sum  \left( (n-1)x_i  - \sum_{j\neq i}x_j \right)^2 $$

$$Var(X) = \dfrac{1}{n^3}  \sum   ((n-1)^2x_i^2 + \sum_{j \neq i}x_j^2 +  \sum_{j \neq i} -2(n-1)x_i \cdot x_j  + \sum_{j,k \neq i} 2x_j \cdot x_k  ) $$

Expanded the inner parts looks like:

$$  (n-1)^2 x_1^2 + x_2^2 .... x_n^2 - 2(n-1)x_1\cdot x_2 -2(n-1) x_1 \cdot x_3 .... -2(n-1) x_1 \cdot x_n + 2 x_2 \cdot x_3 + ... 2x_{n-1} \cdot x_n $$

+

$$  x_1^2 + (n-1)^2 x_2^2 + x_3^2 ... + x_n^2 -2(n-1)x_2\cdot x_1 -2(n-1)x_2 \cdot x_3 .... -2(n-1) x_2 \cdot x_n + 2 x_1 \cdot x_3 + ... 2x_{n-1} \cdot x_n $$

+

**.**

**.**

**.**

$$  x_1^2 + x_2^2 .... (n-1)x_n^2 -2(n-1)x_n\cdot x_1 -2(n-1)x_n \cdot x_2 .... -2(n-1)x_n \cdot x_{n-1} + 2 x_1 \cdot x_2 + ... 2x_{n-2}\cdot x_{n-1} $$

The symmetry comes into play now with the n pieces of this sum again but this time I'll simplify in parts

For the first 2 terms: one time you're going to get $ (n-1)^2 x_i^2 $  and the other  n-1 times you're going to get just  $ (x_i^2) $  Adding these: $ (n-1)^2 + (n-1) =  n(n-1) $ 

Then  for the second 2 terms you're going to get $ (n -2) 2 x_i \cdot x_j $ all the times neither terms  is a match for i and then for the 2 times they do match there is an additional $ 2( -2(n-1) x_i \cdot x_j ) $ 

Adding these:  $ 2(n-2) + -4(n -1) = -2n $

So in total:

$$Var(X) = \dfrac{1}{n^3} \left(  \sum   (n(n-1)x_i ^2 + \sum_{i,j} -2n \cdot x_i \cdot x_j  \right) $$

I'm going to factor out n so all together we end up with:
$$Var(X) = \dfrac{1}{n^2 }   \left(  \sum   (n-1)x_i^2  - 2 \sum_{i,j} x_i \cdot x_j  \right)$$

There are just enough square terms to again rearrange into differences of squares (for any x there are n-1 other samples  and n-1 other of the middle terms involving x)  so in the end

$$Var(X)   = \dfrac{1}{n^2} \sum_{i=1}^{n}\sum_{j=i}^{n} (x_i -  x_j)^2 $$

**Wrapup:**

Having gone through this whole exercise I wouldn't ever practically use this variant. Its a lot more work to compute!  The regular variance requires computing the mean and then the sum of n squares. By contrast finding the squares between all points is 1/2 * n (n  -1) type operation.

