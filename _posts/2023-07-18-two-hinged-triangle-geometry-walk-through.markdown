---
title: Two Hinged Triangle Geometry Walk Through
date: 2023-07-18
tags: [geometry, triangles, complex-numbers, math club]
author: me
math: true
image:
  path: /assets/img/posts/two-hinged-triangle/orig.png
  alt: Two isosceles right triangles hinged at corners
---

## Setup

It's time for another geometry walkthrough motivated this week by this interesting problem from James Tanton.

![Problem diagram](/assets/img/posts/two-hinged-triangle/orig.png){:width="75%"}

"Two isosceles right triangles are hinged at corners as shown. Line segment connecting midpoints of their hypotenuses is used as the hypotenuse of yet another isosceles right triangle.

Prove A, B, C lie on a straight line.
Can anything be said about where B sits on segment AC?"

## Initial Impressions

My first impression was that this reminded me a bit of the [3 hinged squares](https://blog.mathoffthegrid.com/2015/05/cool-geometry-problem.html) problem where among the key observations was that the area of the triangles between the hinges was always the same. This problem has right triangles which are effectively half squares and involves the midpoints (or centers of the squares if they were there) so it's not quite the same at least at first but keep that thought in the back of your head.

Secondly I wondered if it could be as easy as an angle chase. Sadly after working things out that appeared to not be the case. So this would take some more serious work.

The third observation I had is midpoints tend to generate similar triangles:

![Similar triangles observation](/assets/img/posts/two-hinged-triangle/screenshot-1.png){:width="75%"}

And if you draw in the extra line BD that is indeed the case here. Triangle BCD is similar to triangle BCG. BD is parallel to FG and the scale factor is 2:1.

But I wasn't quite sure yet what to do with all of that. Colinearity is one of those slippery properties that is less directly proven. I hadn't been able to find the angles to show that they all added up to 180 via an angle chase which would be the most direct method.

## Analytic Approach

So out of ideas I started going down an analytic path.

![Analytic setup](/assets/img/posts/two-hinged-triangle/screenshot-2.png){:width="75%"}

First I set C, the hinge point, to (0,0) and oriented one triangle ABC on the X and Y axes and assigned it length p. Then I squared off the second triangle and assigned those triangles length q and r. From there I eventually derived an expression for H that showed it was indeed on the line AE. This was a bit complicated and I don't tend to find the analytic solutions to be quite as explanatory as the synthetic ones.

However, via @jimsimons@mathstodon.xyz there is a nice improvement on this approach using the complex plane.

"Put C the point where the triangles meet at the origin, and let the points A and E be the complex numbers 4a and 4e (the 4's avoids fractions later).

The remaining vertices are B at 4a(1-i) and D at 4e(1+i). Note: how natural the 90 degree rotations are via complex multiplication.

The midpoints of the hypotenuses are 2a(1-i) and 2e(1+i).
The midpoint of the line joining them is a(1-i)+e(1+i).

So B is a(1-i)+e(1+i) + i(a(1-i)-e((1+i)) = 2a+2e, which is H the midpoint of AE!"

This makes all the calculations quite simple and is quite lovely.

## Synthetic Approach

Back during my own investigation I still wanted a synthetic approach. Two more things occurred to me next.

The two parallel lines BD and FG meant I could make a second right triangle oriented at exactly the same way as FGH as so:

![Second right triangle construction](/assets/img/posts/two-hinged-triangle/screenshot-3.png){:width="75%"}

After staring a while (probably over an hour or two in between other activities) it sure looked like H was the midpoint of CJ and J looked like it was exactly at the same vertical coordinate as E. A bit later after experimenting with variations of hinged triangles and seeing that these seemed to be invariants I added some more lines and came up with this lemma:

![Parallelogram lemma](/assets/img/posts/two-hinged-triangle/screenshot-4.png){:width="75%"}

Given the same original hinged triangle ABC and CDE the big right isosceles triangle off of BD, BDJ forms the orange parallelogram ACEJ.

Process wise I assumed this and went onto to the next step and verified later but for clarity I'm going to show that is the case here and it turns out to be simpler than the original problem.

Let's go backwards and form the parallelogram ACEJ first and show BDJ is a right isosceles triangle.

* First triangles BAJ and JED are congruent via SAS so the two edges DJ and BJ are congruent as well.
* Then a quick angle chase shows BJD is indeed 90 degrees.

Note: the similarities to the other problem I mentioned with the hinged squares. We once again are adding in congruent sides from each of the original figures to create 2 new triangles that share a congruent side from each of the originals.

With that in hand and remembering that H the intersection of the parallelogram's diagonals bisects both diagonals we can see:

![Final proof](/assets/img/posts/two-hinged-triangle/screenshot-5.png){:width="75%"}

Triangle FGH is surrounded by three similar triangles all in a 1:2 ratio. Or in other words FGH is a dilation of BDJ around point C scaling by a factor of 1:2.

Since via the lemma above, BDJ was a right triangle FGH must also be one! And further by definition its end point is on the diagonal AC and in fact at its midpoint. QED
