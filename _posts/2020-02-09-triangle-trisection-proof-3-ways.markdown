---
title: "Triangle trisection Proof 3 ways "
date: 2020-02-09 05:15:00 +0000
tags:
  - digression
  - geometry
author: me
---

Part I 

![]({{ site.baseurl }}/assets/img/triangle-trisection-proof-3-ways/blogger_5fd057d3.JPG)

Given any triangle that  has each of its sides trisected as above.  Find the area of the interior brown triangle formed.  Surprisingly the answer is the same no matter the triangle and a perhaps unexpected ratio: ** 1/7 of the total area of the original triangle**.

I originally saw this problem a few years back over at: [http://furthermaths.org.uk/favourite](http://furthermaths.org.uk/favourite). And I found it a fun puzzle to work on myself as well as fairly confounding for the kids when I tried it out on them.

A lot of my original thinking revolved around dissections of the triangles.  For example:

- Each of the sub triangles AIC, BHC and ABD have a base that's one third of the side of the total triangle and since they all have the same height as the original triangle, they are all 1/3 of the total area.

![]({{ site.baseurl }}/assets/img/triangle-trisection-proof-3-ways/blogger_8f44efd2.JPG)

Example: shaded ABD which is 1/3 of the total.

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

- \( \triangle{ABM} \sim  \triangle{AIJ} \text{ in a 1:3 ratio so } |BM|= 3 \cdot | IJ | \)
- \( \triangle{BMD} \sim  \triangle{CJD} \text{ in a 1:2 ratio so } 2 \cdot |BM| =  |CJ| \)
- Combine those together and you get \( |IJ| = 6 \cdot |CJ| \)

And those relationships now let us subdivide ACI and find the purple section AIJ must be 1/7 of its area or 1/21 of the total area of ABC.

This can be repeated for all the purple triangles. Interestingly since the argument is the same* each ends of having the same area despite their different shapes*.   And their areas' sum is \( 3 \cdot \frac{1}{21} \) Total Area which is \( \frac{1}{7}\) .  From above we know this also the area of the inner brown triangle.

Part II

What if you could reason about the subdivision in a totally different way using linear algebra? That surprising approach was exactly what @normal_subgroup tweeted the other day.  He starts with the same basic subdivisions I had played with. And then thinks of each sub piece's area as an unknown variable. All the area relations give us 10 equations in 10- unknowns and then we can turn it all into a matrix!

![]({{ site.baseurl }}/assets/img/triangle-trisection-proof-3-ways/blogger_5d0ce0e6.JPG)

Baseline dissection and sub triangles

(5/n) The Linear Algebra Attitude:

-write down connections

-see if they’re enough to achieve the goal

-if possible, find independent connections 

1st connection: 2sA+2sB+2qB =

T+sC+qA+qC

There are 2 other similar equations of the same “type”, as shown [pic.twitter.com/lLrsDg8KO4](https://t.co/lLrsDg8KO4)
— Dan McQuillan (@normalsubgroup) [February 8, 2020](https://twitter.com/normalsubgroup/status/1226154048765800450?ref_src=twsrc%5Etfw)

(6/14) This is *not* enough, so we draw a line to break up a quadrilateral into 2 new triangles (“n” is for “new”). 

nC’ (respectively nC’’) is the area of a new triangle with C’ (respectively C’’).

Thus qB=nC+nC’’ 

This suggests a complete refinement of notation, without q: [pic.twitter.com/rP6RVrMnZW](https://t.co/rP6RVrMnZW)
— Dan McQuillan (@normalsubgroup) [February 8, 2020](https://twitter.com/normalsubgroup/status/1226156419931680768?ref_src=twsrc%5Etfw)

(7/14) Adjusted notation means we will redo the type 1 equations, but that’s easy and can wait.

The exciting thing is that we get *two* new types of connections.

First, the “type 2” equations. As usual, the highlighted blue triangle has twice the area as the red one beside it: [pic.twitter.com/ufu02cRIZQ](https://t.co/ufu02cRIZQ)
— Dan McQuillan (@normalsubgroup) [February 8, 2020](https://twitter.com/normalsubgroup/status/1226157803448000512?ref_src=twsrc%5Etfw)

(8/14) the 3rd type, “type 3 equations” feel lucky at first, as we did not need to draw extra lines to see them! 

(If you tried this problem before, try it again now! Also, I have to shovel again, a lot of shoveling—and feeezing rain is mixed in it—argh!) [pic.twitter.com/DpTrgWG8yY](https://t.co/DpTrgWG8yY)
— Dan McQuillan (@normalsubgroup) [February 8, 2020](https://twitter.com/normalsubgroup/status/1226159382578257920?ref_src=twsrc%5Etfw)

(9/14) The Goal: proving (understanding) that

7T=sum of all ten variables

However (because linear algebra!) we rewrite as:

6T-(sum of other nine variables)=0

Arranging variables to make the matrix look nice helps. I’ll omit 0s from it, and leave “The Goal” in red at the top: [pic.twitter.com/VoJqG1nUYI](https://t.co/VoJqG1nUYI)
— Dan McQuillan (@normalsubgroup) [February 8, 2020](https://twitter.com/normalsubgroup/status/1226204948054056962?ref_src=twsrc%5Etfw)

(10/14) Now to rewrite the “type 1” equations with the new notation, and for the matrix.

I’ll do the first one in detail and just summarize the results in the next tweet. It looks really nice! [pic.twitter.com/0Wjj23qm7f](https://t.co/0Wjj23qm7f)
— Dan McQuillan (@normalsubgroup) [February 8, 2020](https://twitter.com/normalsubgroup/status/1226207810905616386?ref_src=twsrc%5Etfw)

(11/14) This symmetric matrix has so much symmetry!

The first row (red) is there to remember the goal; then 3 rows of type 1 equations, 3 rows of type 2 equations (rewritten) and 3 rows of type 3 equations.

Adding all type 1 and type 2 equations together gets us *really close* [pic.twitter.com/pWjYLoFvpE](https://t.co/pWjYLoFvpE)
— Dan McQuillan (@normalsubgroup) [February 8, 2020](https://twitter.com/normalsubgroup/status/1226210382836125705?ref_src=twsrc%5Etfw)

(12/14) So, it’s not hard to get the goal (1st row) from combining the other 9 rows. 

Sum of type 1 equations

+ sum of type 2 equations

+ twice the sum of type 3 equations

= The Goal

This is a proof. I prefer to see everything at a glimpse. That’s next. [pic.twitter.com/1nFvI9dwLa](https://t.co/1nFvI9dwLa)
— Dan McQuillan (@normalsubgroup) [February 8, 2020](https://twitter.com/normalsubgroup/status/1226212401135128578?ref_src=twsrc%5Etfw)

Post Reflection:

Linear algebra just reorganizes the area math so there is a fairly simple area ratios proof embedded in above. Now that I'm looking for it here's how it goes:

1.  \( |A_1| = 2  | A_0| \)  from the 1:2 ratio across AB

2. \( 2 \cdot ( |A_1| + |A_2|) = |A_6| + | A_7| + |A_8|  \) from the 1:2 ratio across BC

So this combines to say  \( |A_6| + | A_7| + |A_8| + |A_0|  = 7 | A_0| \)  and this is also 1/3 of the entire triangle. The same logic can be repeated symmetrically. around the triangle.

The total area of the triangle is therefore \( 21 |A_0| \) and we can repeat the logic from the first proof to conclude the inner triangle must be \( 3 | A_0| \) .

![]({{ site.baseurl }}/assets/img/triangle-trisection-proof-3-ways/blogger_93842906.JPG)

Part III
And then @MirceaSci chimed in with a really lovely translation visual proof of a way to produce a dissection showing the same result! Note this is an extension of the parallel line logic I used in Part I to find the crucial last  dissection but not a direction I would have thought of going. If one parallel lines adds clarity what if you add all the parallel lines?

I liked your thread a lot. But I kept thinking: "If the answer is so nice, maybe there's a faster proof?"

So here's another proof:

1) Up to affine transformation, assume we start off with an equilateral triangle.

2) Then stare at the below figure long enough. [pic.twitter.com/9LLiwkqSKz](https://t.co/9LLiwkqSKz)
— Mircea Petrache (@MirceaSci) [February 9, 2020](https://twitter.com/MirceaSci/status/1226327023536107523?ref_src=twsrc%5Etfw)

@ilarrosac made a real nice animation of the affine transformation/dissection:

