---
title: "Langley's Adventitious Angles "
date: 2019-05-30 04:28:00 +0000
tags:
  - digression
  - geometry
author: me
---

I've been working through "Geometry Revisited" and have come to a section of old chestnuts one of which was [Langley's Adventitous Angles](https://en.wikipedia.org/wiki/Langley%E2%80%99s_Adventitious_Angles).

![]({{ site.baseurl }}/assets/img/langleys-adventitious-angles/blogger_fbeb4d9c.png)

I recognize this problem from past years although I never tried to solve it before. I remembered enough to know there was a standard trigonometric approach that generalized to other angle sets but not much more. At first I was tempted to skip over it but then I spent a few evenings wrestling with the problem.  At the end I went to look up the old article I remembered and instead found Ben Orlin's 4 year old piece on the  problem: [https://mathwithbaddrawings.com/2015/06/10/trick-or-technique/](https://mathwithbaddrawings.com/2015/06/10/trick-or-technique/)

In a nutshell, he thought one of the Euclidean approaches was magic:

"It’s a masterstroke. It pops the lid right off of the problem. And, at least to me, it’s utterly un-guessable. If you had a thousand monkeys with a thousand typewriters and a thousand protractors, you’d get full verses of Shakespeare long before any of our furry friends stumbled upon this solution."

From there he riffed on tricks versus techniques and whether this was a trick and finally concluded that it was ok to look things up sometimes.

I'm going to gently disagree about the specifics of this problem and then come back to the thesis.  First, although I'm not a huge fan, the quote above is a really classic example of a fixed mindset. More complex Geometry problems even those with auxiliary lines are not solved by pure inspiration or in a blinding flash and more importantly by doing a lot of them you can master approaches over time. When I started doing gogeometry.com problems I struggled for a week on a time on a problem but by reading and thinking about solutions I slowly started to improved. Nowadays I'm much stronger than when I started.

In this case (and in general), its also important to give yourself time to wrestle with the problem and notice structure. Here, I worked backwards a bit and graphed it in Geogebra to find the angle was 30 and from there looked for ideas on how to derive it.  I noticed various isosceles triangles and then spent a lot of time trying to create a pair of similar triangles.  I took a detour down some trigonometric expressions for various lengths.  That lead me to setting BC to 1 and trying to express various lengths purely in terms the side length AC. And while this was also a dead end I started to notice more things. Like in many problems I often subdivide angles into various pieces. (The similar triangle at the bottom of a bigger one recurs all the time) I ended up doing so with ABC into 20 degree increments and noticing more relationships over time I finally stumbled onto the embedded equilateral triangle that unlocked the solution Ben was talking about.  But I worked on it for a few days remaining stuck but playing around and experimenting before the solution presented itself.

But it gets more interesting: one of the approaches I discarded was showing AFC is similar to BFE. I went back and realized that's fairly easy once you add in some trig.

- Let \( AC = 1, BC = 2 \sin(10), AF = 1 - 2 \sin(10), BE  =  \dfrac{1}{2 \sin(20)} \)
- Then you just need to show \(  \dfrac{AF}{AC} = \dfrac{BE}{BF}\)  or   \( 1 - 2\sin(10) = \dfrac{2\sin(10)}{\dfrac{1}{2\sin(20)}} \)
- That cleans up to \( 1 = 2\sin(10) + 4\sin(10)\sin(20) \)
- \( 4\sin(10)\sin(20) * \frac{\cos(10)}{\cos(10)} = \frac{2\cos(20)\sin(20)}{cos(10)} = \frac{\sin(40)}{\cos(10)} \)
- Substituting that in: \( 1 =  2\sin(10) + \frac{\sin(40)}{\cos(10)} \)
- Multiple by cos(10): \( \cos(10) = 2\sin(10)\cos(10) + \sin(40) = \sin(20) + \sin(40) \)
- This last statement is clearly true based on sin sum to product trig identity!

 Then I read up some more and found there are a half dozen approaches on Cut the Knot: [https://www.cut-the-knot.org/triangle/80-80-20/index.shtml](https://www.cut-the-knot.org/triangle/80-80-20/index.shtml).   This  is really an "open middle" problem with avenues for creativity.  You don't have to notice the one critical insight. There are multiple pathways possible. In fact, Ben used a trig heavy approach himself to find one answer.

Another Euclidean Solution found after increasing the symmetry in the drawing:

![]({{ site.baseurl }}/assets/img/langleys-adventitious-angles/blogger_1cd5840e.PNG)

What's critical, also is the experiments I did were fairly general techniques I use with many problem. The solution was not reliant on a one-off trick it was just an extension of the way I've worked before. All of which is to say as your experience in domain increases you gain problem solving "tools" and are able to solve more complex problems.  Tricks are often a technique seen for the first few times.

One of the things I like about Mathematics is that patterns repeat and that goes for interesting solutions.  And while I agree in general there are some areas worth looking up especially when learning or when its not a focus of mastery, most of the time its worth spending some time struggling with the problem first.  You'd be surprised how far that can take you.

Notes: Article I half remembered: [https://www.mathpages.com/home/kmath277/kmath277.htm](https://www.mathpages.com/home/kmath277/kmath277.htm)

 Also interesting about this problem is how it relates to the 18gon. All the lines in this case including: FE intersect vertices!  That is the particularly cool piece even more than the 30 degree angle itself to me.

![]({{ site.baseurl }}/assets/img/langleys-adventitious-angles/blogger_97f063ef.PNG)

2nd Digression: I'm interested in characteristic polynomial for trig functions. If you set AC = 1 and BC = x  and do the similar triangle ratios for AFC amd BFE you end up with the following cubic:  \(8x^3 - 6x + 1 = 0 \)    Consistently if you let \( x = \sin(\theta) \) and use power reduction functions to get \( \frac{1}{2} = \sin(3x) \). You find roots at sin(10), sin(50) and -sin(70).

