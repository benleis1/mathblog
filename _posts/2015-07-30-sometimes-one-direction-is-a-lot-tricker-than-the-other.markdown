---
title: "Sometimes one direction is a lot tricker than the other"
date: 2015-07-30 16:14:00 +0000
tags:
  - geometry
author: me
---

I was looking at a twitter post yesterday:

[https://twitter.com/headguruteacher/status/625334057677815808](https://twitter.com/headguruteacher/status/625334057677815808)

Which I will paraphrase below:  Given a square ABCD with an embedded equilateral triangle

ADE find the measure of angle CEB.

![]({{ site.baseurl }}/assets/img/sometimes-one-direction-is-a-lot-tricker-than-the-other/blogger_2a8bb972.png)

First: there was some disagreement to how easy this problem would be. I threw this one over to my beta tester who can angle chase but hasn't yet covered the Pythagorean theorem. I had included some notation to show the congruent sides in the triangle had started to include the square but then erased that on second thought. Unfortunately, it could still be faintly seen which ruins a fair test but given that much information this did not present much problem. His thinking went as follows: mark the 60 angles in the triangle. Then note the 30 degree angles at CDE and BAE.  There was a muttered "I need something else" followed by "Oh there are isosceles triangles".  With that he marked in DCE and DEC as 75 degree angles and did the rest of the math to find CEB is 360 - (75 + 75 + 60) = 150. This process lasted probably less than 2 minutes. All of which points out that this problem is a fairly standard angle chasing sample and you can provide some vague strategies like identify all the congruent sides and what kind of triangles are present that will help to unblock kids.

**However**, I had seen this same problem earlier this summer in its inverse form. Given the figure above if the triangle CEB is a 15 -15 - 150  isosceles triangle  (or two 15-75-90 right ones) prove the lower triangle is equilateral.  Interestingly stated this way the problem turns out to be a great deal harder. The key to the prior version was to find the isosceles triangle via its congruent sides and then calculate the two 75 degree angles. In this version you essentially want to go the other way. Prove both angles are 75 degrees so you can show the sides are also congruent. 

After **a lot** of experimentation over several hours I arrived at the following construction below:

![]({{ site.baseurl }}/assets/img/sometimes-one-direction-is-a-lot-tricker-than-the-other/blogger_5f53c22c.png)

By angle chasing you can easily find DCE is 75 degrees. So it remains to find CED. This will be done via reflecting the triangle CDE. First extend the line through F and G and then construct a line a 60 degree angle at HCG.  All together HCE is thus 75 degrees which will be our center angle when finding congruence.  This also gives you a new 30-60-90 triangle CGH. Because of that CG is half the length of CH. CG is also half the length of CB and CD because its in a square. So CH = CD. Then triangle CHE is congruent to CDE via SAS.  Based on that CEG = CED = 75 and you're done with some mechanical followup.

Same problem but this form would definitely stump most kids on first glance. Which makes this sort of like the geometric equivalent of a cryptographic hash function.

In which I find another tricky variant.

!![](http://gogeometry.com/problem/problem008.gif)

Looking around I saw this problem on gogeometry: [http://gogeometry.com/problem/problem008.htm](http://gogeometry.com/problem/problem008.htm)

Initially this looks completely different than what was above. But pay attention to the right angle and congruent lines. If you reflect ABC to make a complete square and draw in BD you get this:

![]({{ site.baseurl }}/assets/img/sometimes-one-direction-is-a-lot-tricker-than-the-other/blogger_44b541d6.jpg)

Which is just the equilateral triangle in a square with the 15-15-150s on the bottom rotated on its side a bit.  This version is just as tricky as above: see: [http://mymathclub.blogspot.com/2015/06/random-geometry-recursion.html](http://mymathclub.blogspot.com/2015/06/random-geometry-recursion.html) for the key to finding the solution given these different unknowns. (Its a shame there isn't a geometric version of if I can find a single construction that matches the constraints, then that must be the answer)

Summary
Bringing this back to the realm of what might be usable for my math club:

1. I really like the idea of having kids try the problem both ways to see the difference. I'd favor doing it the hard way first for a few minutes.

2. **Random: **I should look more into cryptographic hashes.  This would be really cool as a bookend if we could do some simple hashing and exchange messages as our main activity.

3. It would be interesting to investigate the relationship between the 2 triangles within a square as you vary the angle sizes. Offhand  I'm think this is inverse tan x and inverse tan 1 -x.

**Addendum: A simpler variant on this theme: [part2](http://mymathclub.blogspot.com/2016/01/sometimes-its-harder-other-way-part-2.html)**