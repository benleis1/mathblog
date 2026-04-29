---
title: "Another Fundamental Square Construction"
date: 2016-08-27 04:57:00 +0000
tags:
  - digression
  - geometry
author: me
---

Its amazing how much for want of a better word beauty is lurking in very simple constructions. I've talked about some square variants before: [http://mymathclub.blogspot.com/2015/07/sometimes-one-direction-is-lot-tricker.html](http://mymathclub.blogspot.com/2015/07/sometimes-one-direction-is-lot-tricker.html)

I've been thinking about another one a lot this week: Take a square, draw the quarter circle arc from its two corners and then draw a line from its median M to the corner D. The original problem from @five_triangles was to find the length of MN but I'm more interested in the sub problem embedded within it and all the things I* noticed and wondered  *Sadly this is all a bit too advanced for the kids this year, although I could guide them through part of it through a combination of guess and check, exploration of samples etc. Its the spirit of what I want to happen though and how I interpret what mathematical questions we should be asking. 

![]({{ site.baseurl }}/assets/img/another-fundamental-square-construction/blogger_e57625e6.jpg)

So instead lets draw the internal right triangle this creates BNE and see what kind of triangle it is.

![]({{ site.baseurl }}/assets/img/another-fundamental-square-construction/blogger_ecdd16ee.png)

If the side of the square is length x, then so is the hypotenuse BN.  Likewise since BM is the median its length is x/2. Triangle MNE is similar to MDC which has its sides in ratio 2:1. So lets let NE be y and ME be y/2. We can then apply the pythagorean theorem:

$$x^2=  (x/2 + y/2)^2 + y^2$$ and simplify a bit to

$$x^2 = \frac{x^2}{4} + \frac{xy}{2} + \frac{y^2}{4} + y^2$$

$$4x^2 = x^2 + 2xy + y^2 + 4y^2$$

$$0 = -3x^2 + 2yx + 5y^2$$

Apply the quadratic equation we can solve for x and arrive at $$x = \frac{5}{3}y$$.

If this doesn't look familiar at first consider that if x was 5, y would 3 or in other words BNE is a pythagorean triple in the 3-4-5 family! That seemed like a really cool relationship: Take a square, run a line from its median to one vertex and you have constructed a 3-4-5 triangle.

Thinking about this some more the wonder was a bit tempered. By picking points on the arc and drawing the right triangle from corner B to that point one can construct every right triangle from 0 to 90 degrees.  So of course all of the Pythagorean triples are included somewhere in that set.  But it still seemed cool that the median produced one rather than some random fraction or irrational number point.

But then I thought some more. What if you start with a Pythagorean triple? All the sides are integers in length.  The point M is going to be in exactly the same ratio to the squares side as the difference of point N from the sides of the square since they are in similar triangles. Those differences are going to be the differences of two integers so of course they will also be integers.

For example: Lets take the 5-12-13.  Its point N will be 13-5 or 8 from the top and 13-12 or 1 from the side.  So if we take a square and take the point 1/8 of the way from the side, draw a line from there to vertex D and create the corresponding triangle we will reconstruct the 5-12-13.

Thus every Pythagorean triple will be produced from a line through a point at some fairly simple ratio of the bottom of the square. The 3-4-5 happens to occur at 1:2.

Ok so what happens at some of the other ratios? What if you put point M at 1/3 of the length of the side for instance?  We can go back to our original quadratic equation and instead of using the ratio 1:2 for the sides ME and EN  let it be a variable k.

Solving you now get:

$$ x^2 = ((x/2 + (ky))^2 + y^2$$  resulting in:

$$x = \frac{2ky  \pm 2y\sqrt{4k^2 +3}}{3}$$

In the Pythagorean triple case k was 1/2 and 4k^2 + 3 was 2. In the case where k is 1/3 liked I originally wondered  the square root of 4k^2 + 3 is irrational.  So all the other ratios produce less interesting non-Pythagorean triple triangles.

Then I started to wonder what's the pattern to the ratios that produce Pythagorean triples? My first thought was lets make a table but then I thought some more about how all the Pythagorean triples can be generated from two integers a,b by computing the following:

$$a^2 + b^2, a^2 - b^2 \text{ and } 2ab$$

That means the computing the ratio in terms of a and b we will end up with

$$R = \frac{(a^2 + b^2) - 2ab}{(a^2 + b^2 )- (a^2 - b^2)}$$

(or its reciprocal) and that simplifies down to:

$$R = \frac{(a-b)^2}{2b^2}$$

When (a,b) = (1,2) the 3-4-5 generator we get 1/2 or the median as expected and its much easier to play with the ratios from here. One easy observation that falls out is that its not a coincidence that the first two ratios we looked at were powers of 2. All ratios of the form:

$$ \frac{1}{2^n}$$ where n is odd produce triples.

You can construct them by choosing b = 2^n and a = to b + 1.

Finally in one last riff, I was left thinking about the original 1:2 triangle MDC. It somehow seems inelegant that its angle is the rather messy 63.43 rather than some pretty fraction of 90 degrees.  Although as I was reminded there is a nifty relationship between \(\frac{\pi}{4}\) and the 1:2 and 1:3 triangles.

See: [https://www.youtube.com/watch?v=m5evLoL0xwg](https://www.youtube.com/watch?v=m5evLoL0xwg)