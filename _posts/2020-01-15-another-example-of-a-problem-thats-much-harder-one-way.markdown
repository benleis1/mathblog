---
title: "Another example of a problem that's much harder one way"
date: 2020-01-15 23:35:00 +0000
tags:
  - digression
  - geometry
author: me
---

We had a snow day this Monday and so there was no Math Club. Instead, I've written a continuation in my series of posts on the curious way geometry problems can be very asymmetrical. ([Last Entry](https://blog.mathoffthegrid.com/2019/07/sometimes-one-way-is-trickier-than.html))  The problem shown below comes from @Caner_KMZ . This walk through is interesting both in how it demonstrates the difficulty of proving things in this direction vs. given the construction of the shape how easy it is to show it must have the given angle measures  and also in  how it shows the many ways you can play with the setup.

1. Angle Chase

Mostly because of all of those congruent edges my first instinct was to draw in some connections to form isosceles triangles and then angle chase. Perhaps this was  just a little bit of algebra away from a solution.

![]({{ site.baseurl }}/assets/img/another-example-of-a-problem-thats-much-harder-one-way/blogger_8e4d4c3f.JPG)

Unfortunately the sums didn't cancel out the way I hope for.  I always ended up with at least 2 unknown angle variables.   What did become more pronounced during this phase was the sum of the two given angles 104 + 176 = 240.  And there is a 60/120 degree  angle pair  (marked in red below)

![]({{ site.baseurl }}/assets/img/another-example-of-a-problem-thats-much-harder-one-way/blogger_7fd0d1dc.JPG)

2. Its a pentagram

But then I also noticed the pentagon in the center and the pentagram around it which I also angle chased in the hopes of something interesting falling out from either:

- The sum of the interior angles of the pentagon summing to 540
- The sum of the angles of the points of the pentagram summing to 180

![]({{ site.baseurl }}/assets/img/another-example-of-a-problem-thats-much-harder-one-way/blogger_a9fa9e11.JPG)

Unfortunately again this was a dead end.

3. What about dividing into triangles?

I became interested in several subdivisions into triangles next including:

![]({{ site.baseurl }}/assets/img/another-example-of-a-problem-thats-much-harder-one-way/blogger_adb57c9c.JPG)

This was an interesting way to visualize the problem but ultimately wasn't much different than the initial angle chases,

4. How about internal equilateral triangles

Somewhere around this point  building around the 60/120 angle I became curious about what happens if you construct an internal equilateral triangle. There are 5 locations where this can be done (and I looked at them all) but the most interesting is he first one I tried here:

![]({{ site.baseurl }}/assets/img/another-example-of-a-problem-thats-much-harder-one-way/blogger_df37deb3.JPG)

It happens to align perfectly so that the equilateral triangle hits the line segment between AD which also seemed promising

I didn't pursue it but its also not hard from this dissection to see a path using trigonometry and the law of Sines  and Cosines to numerically find a solution.  (Its possible the trig identities might remove the need to actually compute any of the numerical values but I'm not sure without spending some time on it.)

- compute AD with the law of sines in two steps using CDF and ABF
- compute the angle using Law of cosines and 3 side lengths of AED

5. Ok how about external triangles or extending the lines?

![]({{ site.baseurl }}/assets/img/another-example-of-a-problem-thats-much-harder-one-way/blogger_90c35d69.JPG)

For example, above I continued the two outer edges to get another external 60 degree triangle and as you can see 76 and 44 degrees show up in multiple places. You can actually build further copies of the same basic triangles up and continue to create larger and larger interlocking triangles.  I couldn't quite do anything with this but its interesting to play with.

5. Revelation: look more closely wait a second!?!

![]({{ site.baseurl }}/assets/img/another-example-of-a-problem-thats-much-harder-one-way/blogger_258a74ea.JPG)

Somewhere in the middle of this process I went through the thought exercise of whether the figure is really constrained.  I came to the conclusion that yes the two given angles and same side lengths create a unique quadrilateral and only one isosceles triangle with the same side lengths would fit on the other side.  By this point I also strongly wanted to plot the whole figure out on Geogebra to directly check the desired answer.  And so I looked back at the original illustration and this time I had a revelation. Up to this point I had been thinking about the figure and crudely drawing it from memory, when I rechecked  the original problem as  posted I saw a new dissection.  What now popped out to me was an apparent rhombus on the bottom and an equilateral triangle on top. Starting from this point its easy to angle chase and confirm that this construction satisfies the problem's definition. **Going this direction is a mechanical process but **as seen elsewhere its still hard to prove its the only solution.

6. Finally: increase Symmetry 

But now that I thought of the figure as a rhombus + equilateral triangle, the immediate thought arose to increase the symmetry by drawing another equilateral triangle on the bottom as below:

![]({{ site.baseurl }}/assets/img/another-example-of-a-problem-thats-much-harder-one-way/blogger_c859884a.JPG)

Seen this way, the next goal was show triangles CAF and BDE were congruent since I could directly calculate angle CAF was 164.

Once again I started an angle chase from the given figure.

- Let CBA = x, then in triangle CBF we have 2 angles and the third FCB must be 68 - x
- We can then compute angle  BCE =  136 - (8 + 68  - x) = 60 + x
- That implies BCE = CBF and BF is parallel to CE. 
- We now have enough to use SAS and show CBF is congruent to BCE and then  the corresponding edges CF and BE are congruent.
- That is the final component needed to show our target triangles CAF and BDE are congurent via SSS and we can at last see the corresponding angle CAF and EDB are congurent and both equal to 164. 

QED.