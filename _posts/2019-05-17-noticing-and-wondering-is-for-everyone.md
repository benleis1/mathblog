---
title: "Noticing and Wondering is for Everyone"
date: 2019-05-17 22:33:00 +0000
tags:
  - digression
  - euler line
  - geometry
  - 9 point circle
author: me
---

One very common prompt seen online is "What do you notice and wonder?"  I like the frame of mind it suggests and often use it or variants with the kids in Math Club as a starting point with a problem or task.  Starting by  making observations and hypotheses and then testing them is great advice for when someone gets stuck or doesn't even know how to start. But more than that, its the way I approach difficult problems myself. So in that spirit, I thought I would document how I use Geogebra sometimes to work a problem experimentally in this spirit.

The Problem

**Prove that the nine point circle cuts the sides of the triangle at angle $ | B -C | $,  $ | C -A | $ ,  $ | A -B | $ **

**(Stop here: and give this a quick try yourself if you can to get a feel for the complexity of the problem.)**

To start off with given the lack of a diagram I had a bit of trouble deciding what was really meant here.  I quickly decided my hand sketches were not accurate enough for me to see potentially interesting pieces of the drawing.  The nine point circle is harder than many other constructs in that there are 15+ points within it and all the combinatoric explosion of segments and angles that creates.  There is so much going on within it, part of the skill needed to  analyze the circle is focusing on the right sub-portion. As a bonus, actually sketching in geogebra had some value cementing for me that the right endpoint of the Euler Line is the circumcenter not the centroid (A mistake I repeated several times).

![]({{ site.baseurl }}/assets/img/noticing-and-wondering-is-for-everyone/blogger_8d07cabd.PNG)

Although I drew the figure above in a simplified form, if you connect the midpoints AM, BM, CM together you get also get the medial triangle (plus 3 more congruent ones). So my first thought was which triangle does this even mean? After looking a bit I decided the circle is tangent to that medial triangle but by using the terms cutting through we are really concerned with ABC and that potentially I should draw in a tangent at the intersection point.

Immediate things I wondered:

- The circle cuts through the triangle  ABC twice on all 3 sides - are the 2 angles at each cut the same  like the problem implies? 
- Is this relation really true i.e. did I pick the correct angle to focus on? 

So I experimented a bit and tested my understanding:

![]({{ site.baseurl }}/assets/img/noticing-and-wondering-is-for-everyone/blogger_253d3458.PNG)

Here I added the tangents and  adjusted the triangle around.  That reminded/confirmed for me that the length of the segment from a point to 2 tangents on a circle is symmetrical as are the angles that are formed.  I then actually just measured the all the various angles A, B, C and the ones formed by the tangents. In situations like this,  I always adjust the triangle and test if the relations stays constant. As hoped for this was the right picture.

![]({{ site.baseurl }}/assets/img/noticing-and-wondering-is-for-everyone/blogger_1ec7fbc8.PNG)

So the goal is to really show $ \angle{x} = |A - C| $  and so on for the other 2 sides. That angle is not very obviously related to anything than N the radius of the circle but since its a tangent this is equivalent to saying that the  arc F-BM = $ 2 | A - C | $  And since there are a lot more avenues to play with the arcs and inscribing angles of them I stayed with that version of the problem. (But had I reached a dead end I would have come back and revisited the angle x)

Next I decided to work backwards a bit and see what all the arcs would be. At first  I focused only on the arcs and triangle ABC taking advantage of the secant - arc relation that  measure of the angle formed by the 2 secants is half the difference of the 2 intercepted arcs. I.e. $ \angle{C} = \frac{\text{arc FE} - \text{arc AM-BM}}{2} $  and so on for each vertex of the triangle ABC. I started with 3 variables for the missing arc pieces but they all simplified out to the final expression in terms of A, B, and C below:

![]({{ site.baseurl }}/assets/img/noticing-and-wondering-is-for-everyone/blogger_c5f54a7e.PNG)

Note: I grayed out or removed lots of the distracting lines and added radii at this point. I also noticed

a few things:

- Those two arcs: CM-F and BM-AM are the same. Why? 
- The remaining arc DE is equally interesting vs the other two that are the same value 2C? Why again?
- Later on I also noticed arc CM-E looked about the same and if you add up its measures: it too is 2C.  Hmm.

So if I could prove the other way that the two lower arcs were congruent I'd probably be half way there but how?  I tabled this for a bit and decided I would like to go the other way so I set up variables for all 6 arcs. $ a_1 ... a_6 $.   From the same secant-arc relation I could create 3 equations in  6 variables. But I needed 3 more to solve for all of them.

And then some time elapsed and by that I mean this occurred over 2 days. I played with some lines and looked for congruent triangles without any luck until I decided to refocus on that medial triangle I worried about way back in the beginning (again I grayed out things that would be distracting).

![]({{ site.baseurl }}/assets/img/noticing-and-wondering-is-for-everyone/blogger_6be8f8c8.PNG)

What's nice about  triangle AM-BM-CM  is that its similar to ABC and inscribes 3 of the arcs: $ A_5, A_1 + A_6, A_2 + A_3 + A_4 $  and what's particularly nice is that $ A_5 = 2C $ immediately falls out from angle BM-CM-AM (which matched the previous diagram when I worked backwards).  So now I really only had 5 equations in 5 unknowns:

- $ A_1 + A_6 = 2A $   
- $ A_2  + A_3 + A_4 = 2B $

Plus the other three I had initially found from the secants:

- $ A_1 + A_2 + A_3 - 2C = 2C $
- $ A_3 + A_4 + 2C - A_1 = 2A $
- $ A_1 + A_6 + 2C - A_3 = 2B $

I'm interested in finding $ A_2, A_4, A_6 $ so I decided to use the first two equations to substitute the other arcs out:

- $ A_4 + A_6 = 2A + 2B - 4C$
- $ A_6 - A_2 = 4A - 2C - 2B $
- $ A_4 + A_2 = 4B - 2A - 2C $

And then I hit a snag. If you add the second two  equations together you get the first one. There really are only 2 unique equations here and I was missing a constraint needed to finish this line of attack.

After looking around for a while I went back to my middle diagram and the congruent arcs I had noticed but not used. I definitely could see that if I could prove  $ A_1 + A_6 = A_5 = 2C  $ and combine that with the equations above I would be done.  So I fumbled around some more and stared at the diagram adding in some more lines and polygons around the arcs I was focusing on:

![]({{ site.baseurl }}/assets/img/noticing-and-wondering-is-for-everyone/blogger_50e824aa.PNG)

- In this diagram the parallelogram CM-AM-C-BM really seems to stick out and  after thinking about it because of the medial triangle it definitely is one. $ \triangle ABC \sim \triangle AM-BM-CM $

Because of the parallel lines $ \angle{AM-BM-C} = \angle{BM-AM-CM} $ and therefore the 2 arcs they inscribe are also congruent as needed. In fact on reflection, I realized this was something I already had known 2 parallel lines through a circle cut two congruent arcs but it was obscured by all the other lines and I hadn't thought about it until now.

So I was done but was I kept wondering a bit. That last step was much nicer than the middle ones.  Would it work for more of the arcs than just the two I had tried?  After playing around the answer was yes!

![]({{ site.baseurl }}/assets/img/noticing-and-wondering-is-for-everyone/blogger_8e6fe915.PNG)

From the inscribed arcs in the medial triangle

1. $ A_5 = 2C $

2. $ A_1 + A_6 = 2A $  

3. $ A_2  + A_3 + A_4 = 2B $

From the parallel lines:

4.$ \text{AM-CM} || AC \rightarrow A_1 = A_ 5  = 2C $

5. $ \text{BM-CM} || BC \rightarrow A_2 + A_3 = A_ 5 = 2C $

6.$ \text{AM-BM} || AB \rightarrow A_1 + A_6 = A_3 + A_ 4 $

These are even easier to combine than the previous set of equations.

- Combine 4 and 2 to get the first needed result $ A_6 = 2A - 2C $
- Combine 5 and 3 to get $ A_4 = 2B - 2C $
- Combine 2, 3 and 6 to get $ A_2 = 2B - 2A $

