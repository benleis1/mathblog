---
title: "Triangle trisection Proof 3 ways "
date: 2020-02-09 05:15:00 +0000
tags:
  - digression
  - geometry
author: me
---

## Part I - My first method via triangle areas

![]({{ site.baseurl }}/assets/img/triangle-trisection-proof-3-ways/blogger_5fd057d3.JPG)

Given any triangle that  has each of its sides trisected as above.  Find the area of the interior brown triangle formed.  Surprisingly the answer is the same no matter the triangle and a perhaps unexpected ratio: ** 1/7 of the total area of the original triangle**.

I originally saw this problem a few years back over at: [http://furthermaths.org.uk/favourite](http://furthermaths.org.uk/favourite). And I found it a fun puzzle to work on myself as well as fairly confounding for the kids when I tried it out on them.

A lot of my original thinking revolved around dissections of the triangles and applies this basic theorem

<div class=boxed markdown=1>
Given 2 triangles with the same altitude, their area's are proportional to their base lengths.
</div>
<p/>

For example:

- Each of the sub triangles AIC, BHC and ABD have a base that's one third of the side of the total triangle and since they all have the same height as the original triangle, they are all 1/3 of the total area.


![]({{ site.baseurl }}/assets/img/triangle-trisection-proof-3-ways/blogger_8f44efd2.JPG)

Example: the area shaded triangle ABD is 1/3 of the total area of ABC.

There are several other natural dissections that you can add onto this:  For any of the sub-triangle above you can add in some lines and divide it into thirds again:

![]({{ site.baseurl }}/assets/img/triangle-trisection-proof-3-ways/blogger_d6f9b8b5.JPG)

ABD split into 3 triangles with equal area ADI, IDF and FDB

Draw a different connection line and you find:

![]({{ site.baseurl }}/assets/img/triangle-trisection-proof-3-ways/blogger_0bb81b85.JPG)

AIJ has half the area of BIJ.  Although BJD is tantalizingly unknown so far.

In fact its this  abundance of subdivisions makes it a bit difficult at first to make progress as you sift through the many relationships.

What eventually becomes clear is that if you add the 3 original triangles from above together: AIC, BHC and ABD you get the same area as the original triangle but you're double counting all the outer edge triangles shown in purple below where the various triangles overlap:

![]({{ site.baseurl }}/assets/img/triangle-trisection-proof-3-ways/blogger_c08aad57.JPG)

Or equivalently: the inner brown triangle has the same area as the sum of the areas of the 3 purple triangles.  So if you can find their area the problem is solved. But how?

And then  you have to make a leap (which often works) to increase the parallel lines in the figure to generate more proportional triangles:

![]({{ site.baseurl }}/assets/img/triangle-trisection-proof-3-ways/blogger_6ab4773d.JPG)

Here I've added BM parallel to CI:  That creates a bunch of interesting relationships:

* $ \triangle{ABM} \sim \triangle{AIJ} \text{ in a 1:3 ratio so } \|BM\|= 3 \cdot \|IJ\| $
* $ \triangle{BMD} \sim \triangle{CJD} \text{ in a 1:2 ratio so } 2 \cdot \|BM\| = \|CJ\| $
* Combine those together and you get $\|IJ\| = 6 \cdot \|CJ\| $

And those relationships now let us subdivide ACI and find the purple section AIJ must be 1/7 of its area or 1/21 of the total area of ABC.

This can be repeated for all the purple triangles. Interestingly since the argument is the same *each ends of having the same area despite their different shapes*. And their areas' sum is $ 3 \cdot \frac{1}{21} $ Total Area which is $ \frac{1}{7}$ . From above we know this also the area of the inner brown triangle.

## Part II - Linear Algebra

What if you could reason about the subdivision in a totally different way using linear algebra? That surprising approach was exactly what @normal_subgroup tweeted the other day.  He starts with the same basic subdivisions I had played with. And then thinks of each sub piece's area as an unknown variable. All the area relations give us 10 equations in 10 unknowns and then we can turn it all into a matrix! *I rewrote this argument after the original tweets became inaccessible*

![]({{ site.baseurl }}/assets/img/triangle-trisection-proof-3-ways/blogger_5d0ce0e6.JPG)
*Baseline dissection and sub triangles*

Dan's main process or as he calls it the "linear algebra attitude". 

- write down connections
- see if they’re enough to achieve the goal
- if possible, find independent connections

What follows is a condensed version of the original tweets.

### Initial Dissection 

![]({{ site.baseurl }}/assets/img/triangle-trisection-proof-3-ways/basic.png )

The first and most basic equation is that the sum of the areas of all the triangles is the total area of ABC which we will set to 1 without loss of generality.

$$I_1 + I_2 + I_3 + I_4 + I_5 + I_6 + C = [ABC] = 1$$

### Connection 1

At this point there are 7 variables and 1 equation so we need to find 6 more in order to solve.

So now we'll hunt for other connections.

![]({{ site.baseurl }}/assets/img/triangle-trisection-proof-3-ways/conn1.png )

Like in my original proof Dan uses the 1:2 ratio of sides to find ratios of areas. 
So for example on side AB we have:

$$ 2(I_1 + I_2 + I_3) = I_4 + I_5 + I_6 + C$$

And since this diagram is symmetrical there are 2 other variants of this equation and only three more equations are needed.

### Connection 2

At this point Dan had to draw more lines to create further relationships and he also turned to the segments I chose in my first proof which split each of the quadrilaterals into triangles. (That's fairly natural since triangles are easier to reason about) 

![]({{ site.baseurl }}/assets/img/triangle-trisection-proof-3-ways/relabel.png )

This has added more triangles (we're up to 10 vs 7)  which I've relabeled in the diagram. There still are the original identified 4 relationships which rewritten as follows

$$A_1 + A_2 + A_3 + A_4 + A_5 + A_6 + A_7 + A_8 + A_9 +  C = 1$$

and the 3 relationships of the form:

$$ 2(A_1 + A_2 + A_3 + A_4) = A_5 + A_6 + A_7 + A_8 = A_9 + C$$

What nice is now this now adds on 2 more sets of related triangles.

![]({{ site.baseurl }}/assets/img/triangle-trisection-proof-3-ways/conn2.png )

The red and blue triangles give us $ 2 \cdot A_4 = A_5 $ and 2 other variants of this on the other sides of the triangle.

![]({{ site.baseurl }}/assets/img/triangle-trisection-proof-3-ways/conn3.png )

Then the slight larger red and blue triangle lead to 3 equations for the triangle ratios of the form $2\cdot(A_3 + A_4) = A_5  + A_6 + C$

So we now have enough equations to make a full 10x10 matrix. To fit the matrix form all of the 9 equalities of the form X = Y are instead written a X - Y = 0,

Note 1st row is the overall areas, next 3 are from 3 connections in order.

$$ \begin{bmatrix} 
1 & 1 & 1 & 1 & 1 & 1 & 1 & 1 & 1 & 1  \\ 
2 & 2 & 2 & 2 & -1 & -1 & -1 & -1 & -1 & -1 \\
2 & -1 & -1 & -1 & -1 & -1 & 2 & 2 & 2 & -1 \\
-1 & -1 & -1 & 2 & 2 & 2 & 2 & -1 & -1 & -1 \\
2 & -1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 \\
0 & 0 & 0 & 2 & -1 & 0 & 0 & 0 & 0 & 0 \\ 
0 & 0 & 0 & 0 & 0 & 0 & 2 & -1 & 0 & 0 \\

2 & -1 & -1 & 0 & 0 & 0 & 0 & 0 & 2 & -1 \\
0 & 0 & 2 & 2 & -1 & -1 & 0  & 0 & 0 & -1 \\
0 & 0 & 0 & 0 & 0 & 2 & 2 & -1 & -1 & -1 \\
	
\end{bmatrix}
	
\cdot \begin{bmatrix}
A_1 \\
A_2 \\
A_3 \\
A_4 \\
A_5 \\
A_6 \\
A_7 \\
A_8 \\
A_9 \\
C \\
\end{bmatrix}
= \begin{bmatrix}
1 \\
0 \\
0 \\
0 \\
0 \\
0 \\
0 \\
0 \\
0 \\
0 \\
\end{bmatrix}
$$

Taking a look at the final 10x10 matrix, we can see  there is both a great deal of symmetry and it already has a lot of zeros. The Gaussian elimination process to diagonalize falls out much quicker because of those properties.  (I'll leave that process as an exercise for the reader)


## Refinement from above

Linear algebra just reorganizes the area math so there is a fairly simple area ratios proof embedded in above. Now that I'm looking for it here's how it goes:

* $ \|A_5\| = 2 \| A_4\| $  from the 1:2 ratio across AB

* $ 2 \cdot ( \|A_4\| + \|A_5\|) = \|A_1\| + \| A_2\| + \|A_3\| $ from the 1:2 ratio across BC

So this combines to say $ \|\triangle{ACG}\| = \|A_1\| + \| A_2\| + \|A_3\| + \|A_4\|  = 2 \cdot( \|A_4\| + \|A_5\|) + \|A_4\| = 2 \cdot (\| A_4\| + 2\|A_4\|) + \|A_4\| = 7 \| A_4\| $ and this is also 1/3 of the entire triangle from the base  AG being 1/3 of AB . The same logic can be repeated symmetrically around the triangle.

The total area of the triangle is therefore $ 21 \|A_4\| $ and we can repeat the logic from the first proof to conclude the inner triangle must be $ 3 \| A_4 \| $ .

![]({{ site.baseurl }}/assets/img/triangle-trisection-proof-3-ways/blogger_93842906.JPG)

## Part III - Translations
And then @MirceaSci chimed in with a really lovely translation visual proof of a way to produce a dissection showing the same result! **Note** this is an extension of the parallel line logic I used in Part I to find the crucial last  dissection but not a direction I would have thought of going. If one parallel lines adds clarity what if you add all the parallel lines?

"I liked your thread a lot. But I kept thinking: "If the answer is so nice, maybe there's a faster proof?"

So here's another proof:

1) Up to affine transformation, assume we start off with an equilateral triangle.

![]({{ site.baseurl }}/assets/img/triangle-trisection-proof-3-ways/translation.png )
*Reconstruction of tweet image - showing the parallelogram and congruent triangles formed*

2) Then stare at the below figure long enough. [pic.twitter.com/9LLiwkqSKz](https://t.co/9LLiwkqSKz)"
— Mircea Petrache (@MirceaSci) [February 9, 2020](https://twitter.com/MirceaSci/status/1226327023536107523?ref_src=twsrc%5Etfw)

@ilarrosac made a real nice animation of the transformation/dissection (without the affine transform to an equilateral triangle):


<video class="native-width" autoplay loop muted playsinline  controls>
  <source src="{{ '/assets/videos/triangle-disect.mp4' | relative_url }}" type="video/mp4">
  Your browser does not support the video tag.
</video>
