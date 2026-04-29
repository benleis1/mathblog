---
title: "Fun with Pentagons"
date: 2018-01-14 04:23:00 +0000
tags:
  - digression
  - geometry
author: me
---

I'm in the mood for a geometry walk-through. I'll start out by saying this one has tons of solutions. I've thought of 3 or 4 and seen several additional ones (one of my favorite parts of geometry.)  I tend in this case to prefer the synthetic to trigonometric solutions but  if you add that \( cos(36) =  \frac{\phi}{2} \) or any variant rather than blindly calculating a decimal I'm good.

![]({{ site.baseurl }}/assets/img/fun-with-pentagons/blogger_9ed74ef5.jpg)

[@@jldavilaa01]

This is the second interesting pentagon problem I've seen in a week or so. With this one, I immediately thought I'll be disappointed if the golden ratio is not embedded somewhere in the answer.  When playing around I spent some time angle chasing and looking for similar triangles. This led to several different ways to find the ratio. I've included the simplest one below.

First I assume a regular pentagon of side length 1 for the rest of this discussion. Secondly, I'm going to briefly discuss how the golden ratio is found within the figure.

![]({{ site.baseurl }}/assets/img/fun-with-pentagons/blogger_c1872937.PNG)

If you look at 4 points on the pentagon (A, C, D and E) its clear they form a cyclic quadrilateral with three sides of length 1. Further all the other sides and diagonals have the same length since they are all in congruent triangles.

Let \( d = \overline{CE} = \overline{AD} = \overline{AC} \)

Using Ptolemy's theorem:   \(1^2  + 1\cdot d = d^2\)  Solving you get \(d = \frac{1+\sqrt{5}}{2} = \phi\)  also know as the golden ratio.

With that result in hand I now did some angle chasing:

![]({{ site.baseurl }}/assets/img/fun-with-pentagons/blogger_c728fb00.PNG)

I found three 36-54-90 triangles: DHK, EDI and ACG (which are outlined in red above).  In addition we already know that:

- \(\overline{EI} = \frac{\phi}{2}\)
- \(\overline{AC} = \phi \)
- \(\overline{DE} = 1 \)
- \(\overline{HI} = \overline{HK} = b\)
- \(\overline{AG} = 2a \)

So now we can apply the similar triangles:

From DHK and EDI:

$$\frac{\overline{DH}}{\overline{HK}} = \frac{\overline{DE}}{\overline{EI}} $$

$$\frac{\overline{DH}}{b} = \frac{1}{\frac{\phi}{2}} \text{ or } \overline{DH} = \frac{2b}{\phi}$$

Then \(\overline{DI} = \overline{DH} + \overline{HI} = \frac{2b}{\phi} + b = b\cdot(\frac{2}{\phi} + 1) \)

Now look at EDI and ACG:

$$\frac{\overline{DI}}{\overline{DE}} = \frac{\overline{AG}}{\overline{AC}} $$

$$\frac{b\cdot(\frac{2}{\phi} + 1)}{1} = \frac{2a}{\overline{\phi}} $$

Rearranging:

$$\frac{a}{b} =  \frac{\phi}{2} \cdot (\frac{2}{\phi} + 1) = \frac{2 + \phi}{2}$$

Note: there was a fun alternative presented online by  @asitnof using areas rather than similar triangles:

!![](https://pbs.twimg.com/media/DTbyl81W0AI8CP0.jpg)

Again we start with the cross diagonals being phi in length but instead find 2 different expressions for the length of the triangles. One based on the incircle and the second on the base and height.