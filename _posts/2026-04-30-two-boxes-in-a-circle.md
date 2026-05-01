---
title: "Two Boxes in a Circle"
date: 2026-04-30
tags: [walkthrouh, geometry, cyclic quad]
author: me
math: true
---

## The March MathsJam had an interesting geometry puzzle.

![See text]({{ site.baseurl }}/assets/img/2026-04-30/problem.png)

In the course of the evening, we noodled on this for a while and initially made no progress. So I decided to model it in geogebra to confirm whether there was a unique solution.  What I found visually was that there appeared to be one when the smaller box was tilted 45 degrees. And that was in fact not hard to confirm because the triangle DFA inscribes the diameter in that case, along with the triangle FGA. You can then solve with the Pythagorean theorem and verify that they give the same result in this configuration.

![See text]({{ site.baseurl }}/assets/img/2026-04-30/step2.png)

$$ \text{the diameter: } AF^2 = AD^2 + DF^2  = 16 + (4 + 2\sqrt{2})^2 = 40 + 16 \sqrt{2} $$
$$ \text{and also the diameter: } AF^2 = FG^2 + AG^2 = 4 + (2 + 4 \sqrt{2})^2 = 40 + 16 \sqrt{2} $$


But this isn't entirely satisfying because it basically presumes that answer and confirms it works **and** it doesn't settle whether this is the only answer.


## Trying to prove the configuration 
One of the central things the above process used was the inscribed right angles embedded in the circle at D and G. This seemed like an important part of the solution. I tried out a bunch of variants including adding lines through the center of the circle to middle of the squares and to the outer corners. Nothing seemed to prove that interior angle was 45 like I hoped. So I turned to a different approach: trying to prove uniqueness of the solution and settling for a known solution for existence. 

## The Sprirograph Approach
Imagine taking the smaller box and rotating it fully around the circle. Because the box is rigid and a fixed length you end up tracing a smaller circle like below


![See text]({{ site.baseurl }}/assets/img/2026-04-30/spirograph.png)

Its clear the smaller square can only intersect when either one of the corners overlaps point C and only two configuration work for that case. Every other position will place the ends of the square at other locations on the smaller circle. This provides a uniqueness proof of sorts* Although it actually suggests there are 2 configurations depending on which corner of the two corners of the small square is used and the 45 degree rotation is only one of them. 


## A difficult construction that works

Later on I realized that the inner circle was interesting because it created another inscribed angle at C.  

![See text]({{ site.baseurl }}/assets/img/2026-04-30/spirograph2.png)

This creates the triangle HCN and if we let r be the radius of the inner circle: $(2r)^2 = 4^2 + CN^2$.  And CN is discoverable using the radius of the outer circle which I'll call R.

![See text]({{ site.baseurl }}/assets/img/2026-04-30/spirograph3.png)

From triangle AOQ we can get $R^2 = AQ^2 + 2^2$ and $AQ = 4 - \frac{1}{2}CN$

All I needed was one more relationship between r and R to solve. So I introduced the addtional triangle OPF from the first figure.
That has a Pythagorean relationship $R^2 = 1^2 + OP^2$ and  we can OP in terms of r as well by introducing yet another triangle.

![See text]({{ site.baseurl }}/assets/img/2026-04-30/spirograph4.png)

Triangle OQE gives us $r^2  = OQ^2 + 1^2$ and $OP = OQ + 2$. So we eventually end up with a more complicated than desired system but it is solvable:

$$4r^2 = 16 + (R^2 - 4) - 8\sqrt{R^2 - 4} + 16$$

$$R^2 = 1 + (r^2 - 1) + 4 \sqrt{r^2 -1} + 4$$

**I'll leave the algebra as an exercise for the reader.*

## Breakthrough
That felt decent but more complicated than should be possible so eventually I went back to a simpler variant of on my original experiments: looking at the intersecting chords formed by the two squares.

Let consider extending CD to F' and CG to A'.  Note we don't know if A' = A or F' = F yet. This gives us two intersecting chords A'G and DF'.

![See text]({{ site.baseurl }}/assets/img/2026-04-30/chords.png)

These must satisfy the relationship: $DC \cdot CF' = CG \cdot CA'$ which simplifies to $2CF' = CA'$  

Let w = CF' for the rest of this proof. We now can go back to our original inscribed angles. We don't know if they overlap each other this time but each inscribed angle D and G  defines a triangle on a diameter of the circle and those diameters are the same length. So:

$$4^2 + (4 + w)^2 = 2^2 + (2 + 2w)^2$$

That's a lot easier than the previous systems and simplifies to $3w^2=24$ or $w=2\sqrt{2}$
**Note** that's exactly the diagonal of our smaller square as expected. 

We don't have to really prove this is the case because w is enough to calculate the radius by just plugging into the Pythagorean formula for either inscribing triangle like I did initially. 

But for fun let's look at all points that are $4\sqrt2$ from C and and since that forms a circle there must be a second intersection.

![See text]({{ site.baseurl }}/assets/img/2026-04-30/uniqueness.png)

Clearly that second intersection isn't collinear with either of the segments CD or CG and the diagonal on AC really is. 

But if we extend to see what it's connecting to - voila the second case I alluded to at the top pops out. We can also have the smaller triangle touching and slightly overlapping the larger one.

![See text]({{ site.baseurl }}/assets/img/2026-04-30/uniqueness2.png)




