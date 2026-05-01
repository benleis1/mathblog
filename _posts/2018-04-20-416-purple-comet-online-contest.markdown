---
title: "4/16 Purple Comet Online Contest"
date: 2018-04-20 21:43:00 +0000
tags:
  - purple comet
author: me
---

Three years ago I discovered the Purple Comet contest @ [purplecomet.org](http://purplecomet.org/).  It has close links to the AwesomeMath  and I really liked the problems in the old tests. So I tried it out with my fifth graders at the time.  That [2015 Experience]({% post_url 2015-04-24-421-purple-comet-online-meet %}) discouraged me from doing it again.  Despite the kids theoretically having up to Math7 knowledge the contest was too hard and I needed material that was better levelled for them to be most productive.

Cut to this year when I have actual 6th and 8th graders and I decided to participate again.  My current motivation was less the problems themselves than the timing. We don't have any real contests to participate in during the Spring and I wanted to do one meaningful one for the kids who like doing them.  Since you have a testing window when you can administer the contest and it just needs a few computers, the overall experience is very low barrier (much easier than an AMC test).

Overall this year went much better. I split into two teams and we worked in the library. Both groups found answers to over half the problems and most kids stayed on target.  I had  few at the last 10 minutes who had reached their limit for the day which is not unexpected.

I'm once again trying to decide which problems to review as a group next week. I'm thinking we probably should only do 3 maximum so perhaps I'll bring a set and let the kids vote on which ones they want to see the most.

In the meantime and in no particular order here are my observations about a few problems I noticed and thought about while proctoring, now that its ok to discuss them:

**Problem 17**

Let a, b, c, and d be real numbers such that \( a^2 + b^2 + c^2 + d^2 = 3a + 8b + 24c + 37d = 2018. \). Evaluate
3b + 8c + 24d + 37a.

This one is phrased in such a way as to suggest non integer answers but just looking at it the temptation is to say what  if the two expression are completely identical and 3a = a^2, 8b = b^2 etc?  And if you compute the squares sure enough  \(3^2 + 8^2 + 24^2 + 37^2\) does equal 2018.

That's fairly easy for a problem at the end and its not a very satisfying method. So what I think they might have been aiming at was to subtract the two expressions and complete the square to get

\( (a-\frac{3}{2})^2 + (b-4)^2 + (c - 12)^2 + (d-\frac{37}{2})^2  = \frac{1009}{2} \)  The right hand side is 1/4 of 2018 so you can plug the original equations back in to get

\( 4( (a-\frac{3}{2})^2 + (b-4)^2 + (c - 12)^2 + (d-\frac{37}{2})^2 ) =   a^2 + b^2 + c^2 + d^2   \)

Then subtracting the right hand side again you get:

\(  4(a-\frac{3}{2})^2  - a^2 + 4(b-4)^2 - b^2 + 4(c - 12)^2  - c^2+ 4(d-\frac{37}{2})^2 - d^2   = 0 \)

Each one of those pieces is a difference of square for example the first one is \( (2a - 3 + a )(2a - 3 - a)  = (3a - 3)(a - 3) \) and if we set a to either 1 or 3 will zero out etc. You can do a similar operation with the other original expression and see that a = 3 for instance is the overlapping solution to both new equations. That gets to the original observation once you test the values in the original function. But it doesn't rule out alternate solutions where the pieces balance each other out in various ways.

**Problem 16 **

On  \( \triangle{ABC} \)  let D be a point on side AB, F be a point on side AC, and E be a point inside the triangle so
that DE is parallel to AC and EF is parallel AB. Given that AF = 6, AC = 33, AD = 7, AB = 26, and the area of
quadrilateral ADEF is 14, find the area of  \( \triangle{ABC} \)

A significant part of the difficult with problems like these is getting an accurate drawing from the description. That's something we can definitely practice as a group.

Assuming you arrived at the following:

![]({{ site.baseurl }}/assets/img/416-purple-comet-online-contest/blogger_a2d3e6d1.PNG)

You can deal with the easier part of the problem which is all about triangle area ratios. First lets remove the unneeded lines and split the parallelogram in half.

![]({{ site.baseurl }}/assets/img/416-purple-comet-online-contest/blogger_61afb915.PNG)

-  First note ADF is half of the parallelogram and has an area of 7.
- Then the area ratio of ADF : ACD is 6:33 
- You then repeat this process: the area ratio of ACD : ABC is 7:26

**Problem 13 **

Suppose x and y are nonzero real numbers simultaneously satisfying the equations \( x + \frac{2018}{y} = 1000 \) and \( \frac{9}{x} + y = 1. \) Find the maximum possible value of x + 1000y.

My first instinct in these problems is to always remove the fractions to get:

$xy + 2018 = 1000y$ and $9 + xy = x$ Then just on inspection we have the 2 parts of the expression we want to simplify   \( x + 1000y = 2xy + 2027 \)

And we also have an way to isolate either x and y, I picked y, to plug them back in and get

$y = \frac{9}{1-x}$ =>  $x + 1000 \cdot \frac{9}{1-x} = 2x \cdot \frac {9}{1-x} + 2027$

That cleans up quickly to: \( 1000x^2 - 3009x + 2018 = 0\) and while the numbers are high the factorization is still not too hard (1000x - 1019)(x - 2).  So despite the phrasing which suggests an optimization problem there are only 2 solutions  for (x,y) and you just have to plug them in and compare to get the final result.

**Problem 15**

There are integers \(a_1, a_2, a_3, . . . , a_{240}\) such that \( x(x + 1)(x + 2)(x + 3)· · ·(x + 239) = \sum_{n=1}^{240} a_n x^n \). Find the
number of integers k with 1 ≤ k ≤ 240 such that \(a_k\) is a multiple of 3.

At first glance this is a slog of a counting problem. Multiplying all 240 binomials together is impractical without a computer program.  So the first step I took was to look for patterns by doing the first few terms,

Ignoring x which doesn't change the coefficients:

$$(x+1)(x+2) = x^2 + 3x + 2$$

$$(x+1)(x+2)(x+3) = x^3 + 6x^2 + 11x + 6$$

I noticed a few things from this:

- all the x+3n terms always added 1 more multiple of 3 coefficient than the last term. This makes sense the x term just shifts the previous result and then we add a multiple of 3 to it which doesn't change the value modulus 3 and finally we get one new multiple of 3 constant term at the end.
- So grouping the terms looked interesting.  Note: there are 79 terms with  a multiple of 3 in them. So that's 79 coefficients with a 3 at the end as a minimum. 
- Next: modular arithmetic seems useful here. We can simplify everything to mod 3 and not change the result so now we have x(x+1)(x+2)(x+3)(x+1)(x+2)(x+3) ....   I chose 3 rather than zero deliberately so we didn't lose any terms.

I also started simplifying the calculations letting x be an implicit place value system  and never carrying so

for example squaring the first term (x+1)^2  becomes (1 1)^2  = 1 2 1 

Somewhere around this point I also converted to balanced ternary and used  \( ( x+3)^{79} \cdot (x+1)^{80} \cdot (x-1)^{80} \)

That's convenient because we can mostly easily expand the two final terms using the binomial theorem mod 3. At this point you're left with multiplying two highly symmetrical 81 digit terms. 

As far as I  can see there's no escaping working out this product at least to a few terms before the pattern is visible but its a fairly simple process and you quickly see the result looks like (1 0 1 0 1 ... 0 1) with 161 terms and therefore 80 more zeros which are really coefficients that are multiples of three. That gives the baseline number of coefficients. So we add the two parts together to get 80 + 79 = 159. 

P.O.T.W:

I went with another UWaterloo problem set this week: [http://www.cemc.uwaterloo.ca/resources/potw/2017-18/English/POTWC-17-NN-PA-26-P.pdf](http://www.cemc.uwaterloo.ca/resources/potw/2017-18/English/POTWC-17-NN-PA-26-P.pdf) with a fairly approachable  number theory/lcm type problem.