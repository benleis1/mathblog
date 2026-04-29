---
title: "Proof of Pentagon Construction"
date: 2018-12-22 08:49:00 +0000
tags:
  - digression
  - geometry
author: me
---

I was walking through the following construction of a regular pentagon from the AoPS Geometry textbook recently.

![]({{ site.baseurl }}/assets/img/proof-of-pentagon-construction/blogger_85048b99.PNG)

- Quarter a circle
- Construct the midpoint of one radius at F.
- Create triangle AFO 
- Bisect angle AFO  with segment FG
- Construct a perpendicular BG at the point G from the diameter of the circle to the circumference.
- Segment AB is \( \frac{1}{5} \) of the circumference and you can now copy it around the circle to form the pentagon.

But why does this work?   What follows is a cleaned up explanation with some improvements borrowed from http://www.cut-the-knot.org

First the pentagon divides the circumference of the circle into five 72 degree arcs so it would be nice to understand the side length ratios of the 18-72-90 triangle.  To get there we'll start with its close cousin the 36-72-72. (See: [Deep Dive](https://www.blogger.com/blog/page/edit/4227811469912372962/46451839090312979))

![]({{ site.baseurl }}/assets/img/proof-of-pentagon-construction/blogger_a0d58b94.PNG)

- We're going to bisect angle A with the segment AC. This forms 2 more isosceles triangle ABC and ACO and all the segments BC, AC and AO are congruent.  Moreover triangle ACO is another smaller 36-72-72
- So let  AO = 1 and let CO = a
- From the similar triangles ACO and ABO  we get \( \frac{1}{a} = \frac{a+1}{1} \) 
- Simplifying \( a^2 + a - 1 = 0 \)  and \( a = \frac{-1 + \sqrt{5}}{2} \).  Hey that's almost the golden ratio. In fact \(a  = \phi - 1 \)  and the entire side BO = a + 1 = \( \phi \)  
- We can then add a perpendicular bisector to derive the following ratios for the 18-72-90

![]({{ site.baseurl }}/assets/img/proof-of-pentagon-construction/blogger_73e7327a.PNG)

Now lets return to the construction. Without loss of generality let's set the radius of the circle to also be the golden ratio \( \phi \).   This will make the comparisons easier. It now remains to show segment OG is length of \( \frac{1}{2} \)  If this is the case then triangle BOG is congruent to the one above and angle BOG is 72 degrees.  From there the arc AB is \( \frac{1}{5} \) of the circle and we have our first pentagon side.

![]({{ site.baseurl }}/assets/img/proof-of-pentagon-construction/blogger_819ce224.PNG)

- Since the circle is radius \( \phi \), BO is already identical to the 18-72-90 triangle hypotenuse.
- Looking at triangle AFO, FO is \(\frac{\phi}{2}\), AO is \( \phi \) so via the Pythagorean Theorem AF is \( \sqrt{5} \cdot  \frac{\phi}{2} \)
- We can now use the angle bisector theorem to find OG.

$$ \frac{OG}{FO} = \frac{AG}{AF} $$

$$OG = \frac{\phi}{2} \cdot \frac{ \phi - OG}{\sqrt{5} \cdot \frac{\phi}{2}}  $$

That simplifies to   \( (\sqrt{5} + 1)OG = \phi \)  

but  since \( (\sqrt{5} + 1) = 2 \phi \) we get \( 2 \phi \cdot OG = \phi \) and \( OG = \frac{1}{2} \) as needed!

