---
title: "Combinatorics from a (social) distance"
date: 2020-03-15 00:04:00 +0000
tags:
  - Combinatorics
  - pascal's triangle
  - vandermonde's identity
author: me
---

I just found yet another combinatoric link with Pascal's Triangle that I never knew before and its both fairly intuitive and a source for something to do later on with the kids when school resumes.   In  the past I've done things like: [529-combinations-and-pascals-triangle]({% post_url 2017-05-31-529-combinations-and-pascals-triangle %})    What follows is the skeleton of what I think would make a great half an hour investigation. Each part probably should be done in groups and then shared together. I definitely would bring large hexagonal paper to draw on.

First let's start with the basic triangle:

$$
\newcommand\cn[3]{\llap{#1}#2\rlap{#3}} 
\begin{array}{c} 
&&&&&&\cn{}{1}{}\\ 
&&&&&\cn{}{1}{}&&\cn{}{1}{}\\ 
&&&&\cn{}{1}{}&&\cn{}{2}{}&&\cn{}{1}{}\\ 
&&&\cn{}{1}{}&&\cn{}{3}{}&&\cn{}{3}{}&&\cn{}{1}{}\\ 
&&\cn{}{1}{}&&\cn{}{4}{}&&\cn{}{6}{}&&\cn{}{4}{}&&\cn{}{1}{}\\ 
&\cn{}{1}{}&&\cn{}{5}{}&&\cn{1}{}{0}&&\cn{1}{}{0}&&\cn{}{5}{}&&\cn{}{1}{}\\ 
\cn{}{1}{}&&\cn{}{6}{}&&\cn{1}{}{5}&&\cn{2}{}{0}&&\cn{1}{}{5}&&\cn{}{6}{}&&\cn{}{1}{} 
\end{array}
$$

And switch to the combinatorics form:

$$
\newcommand\cn[3]{\llap{#1}#2\rlap{#3}} 
\begin{array}{c} 
&&&&&&\cn{}{0 \choose 0}{}\\ 
&&&&&\cn{}{1 \choose 0}{}&&\cn{}{1 \choose 1}{}\\ 
&&&&\cn{}{2 \choose 0}{}&&\cn{}{2 \choose 1}{}&&\cn{}{2 \choose 2}{}\\ 
&&&\cn{}{3 \choose 0}{}&&\cn{}{3 \choose 1}{}&&\cn{}{3 \choose 2}{}&&\cn{}{3 \choose 3}{}\\ 
&&\cn{}{4 \choose 0}{}&&\cn{}{4 \choose 1}{}&&\cn{}{4 \choose 2}{}&&\cn{}{4 \choose 3}{}&&\cn{}{4 \choose 4}{}\\ 
&\cn{}{5 \choose 0}{}&&\cn{}{5 \choose 1}{}&&\cn{}{5 \choose 2}{}&&\cn{}{5 \choose 3}{}&&\cn{}{5 \choose 4}{}&&\cn{}{5 \choose 5}{}\\ 
\cn{}{6 \choose 0}{}&&\cn{}{6 \choose 1}{}&&\cn{}{6 \choose 2}{}&&\cn{}{6 \choose 3}{}&&\cn{}{6 \choose 4}{}&&\cn{}{6 \choose 5}{}&&\cn{}{6 \choose 6}{} 
\end{array}
$$

Before really digging in we have to step back and establish the equivalence between the two forms

and that the cell uses the same addition rule to generate the children i.e. $ {n \choose m} + {n \choose {m + 1}} = 
{n+1 \choose {m+1}} $

This is straightforward to establish algebraically but I prefer the combinatorics case work. Let's say you already know the values of $ {n \choose m}$ and ${n \choose {m + 1}}$ and want to figure out ${n+1 \choose {m+1}}$

- We're adding one additional object to get to n + 1.
- So when making sets we have 2 cases 
- The case where we include the new object and then need to find m more from old objects i.e ${n \choose m}$
- The case where don't include the new object then need to find m +1  more from the old objects i.e. ${n \choose {m + 1}}$
- Adding these 2 cases we get the desired addition principle

Almost everything else I'll discuss flows from this basic rule.   And here's where the new material (for me) comes in. You can also work backwards from any single combination and split it back up into its parents. This process can be continued level by level and when doing so something nifty emerges.  

This time I'm going to use a concrete example and look at $ {9 \choose 4} $ and break it apart repeatedly moving up the triangle.

-  $ {9 \choose 4}  = {8 \choose 3 } + {8 \choose 4} $

-  $ {9 \choose 4} =  {7 \choose 2 } + 2  \cdot {7 \choose 3 } + {7 \choose 4 } $

-  $ {9 \choose 4} =  {6 \choose 1 } + 3  \cdot {6 \choose 2 } + 3 \cdot {6 \choose  3} + {6 \choose 4 } $

-  $ {9 \choose 4} =  {5 \choose 0 } + 4  \cdot {5 \choose 1 } + 6 \cdot {5 \choose 2} + 4 \cdot {5 \choose  3} + {6 \choose 4 } $

![]({{ site.baseurl }}/assets/img/combinatorics-from-a-social-distance/blogger_e64d99a5.jpg)

As you can see the coefficients of the combination terms are** reforming their own pascal triangle! **What this means is you can expand out any combination to a very regular sum of any desired higher upper row on the triangle.  Or conversely if you have the proper "triangely" coefficients in a sum of  permutations on a row, they will coalesce down into a single permutation somewhere lower on the triangle.

There are a  few subtleties to this.  For one when moving upwards either the left or right hand sided of the term can fall outside the triangle. For example if I expanded a level farther above I'd get $ 4 \choose -1 $.   That's not a problem since these type permutations or the ones on the right side like $ 4  \choose 5 $ are by definition equal to 0.  In fact that means if you expanded all the way up to the top of the triangle almost everything would fall of the ends. And you would be left with one term with a coefficent, wait for it, equal to the original combination you started with.

[In fact, the result is completely symmetrical.  The rows with the same number of elements on the top and bottom will have the same values. The only difference is the coefficients and row values will swap.]

Part of this interesting phenomenon is formally knows as [Vandermonde's identity](https://en.wikipedia.org/wiki/Vandermonde%27s_identity)   

Although it may take a moment to see why this is the same thing. The left hand side is our original combination. If we expand it up  to the row where the first term is in terms choose 0 the row will be row n.  We'll then have a set of standard combinations of the terms in this row: the first term in the product on the right hand side.  And the second term in the product is just the row entries on the nth level that the expanding triangle encompasses.

We can also reinterpret this entire expression combinatorically. Let's say we have a set that we want to pick r items from. We're going to break the problem apart by dividing the set into two halves  of size m and n.  Now we have a bunch of cases to consider. 

- I can take all the items from set b
- or 1 item from set a and the rest from set b 
- or 2 items from set a and the rest from set b 
- ...
- or all but 1 item from set a and one from set b
- or all the items from set a and none from set b

Each of these expressions is one term  in the summation series. This case work works best at the "final" top row. But I think I'm more delighted by the upside down triangle with all its intermediary parts.

