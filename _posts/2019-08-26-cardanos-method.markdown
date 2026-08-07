---
title: "Cardano's  Method"
date: 2019-08-26 18:54:00 +0000
tags: [cubics, algebra, cardano's method]
author: me
---

# Intro
This all starts with a fantastic new video from Mathologer: 500 years of NOT teaching the cubic formula.

<iframe width="560" height="315" src="https://www.youtube.com/embed/N-KXStupwsc?si=tZcw99eXzUIrZNDV" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
<p/>

The title is more tongue in cheek than heartfelt as he himself gives some answers as to the question at the end of the video.  But it did lead to a quick exchange on twitter:

Do the songs exist because kids Can't handle the derivation of the quadratic formula, or because there's insufficient reason for them to care about it?
— Patrick Honner (@MrHonner) [August 25, 2019](https://twitter.com/MrHonner/status/1165417359764533248?ref_src=twsrc%5Etfw)

Several memories flashed in my brain after my first read: the kids breaking into the quadratic formula song during one Math Club Session where we needed to derive the golden ratio and another time when one of them put part of the cubic formula on a poster we were making to bring to MathCounts.

The quadratic formula song troubles me too because I worry it hides a lack of conceptual understanding. I have other memories of dragging kids through a problem that required completing the square where it was clear their mastery was incomplete. (See: [here]({% post_url 2019-04-12-good-problem-but-guessable %}) for a particularly tricky version of this)  And yet I don't look at its existence as either an admission of defeat by teachers or a lack of motivation behind it. Instead my intuition is that it and many of its often reviled mnemonic  kin like keep/flip/change are the symptoms of a problem not the cause of it: Mathematics is hard. Its hard both to teach it well and its hard to learn.  Often a jingle like the song remains after the lesson that was crafted to carefully explore and motivate the formula has faded away.

I think Patrick's instinct to seek better curriculum that properly situate the QF and CTS in problems that need them is a natural response to the current state of affairs. And yet, these already exist and have existed for hundreds of years and the problem of shallow understanding still persists. As various waves of reform attest, we seem to over estimate the value of "better" pedagogy or our ability to spread them widely across schools. Even with my student who had memorized the cubic formula and wanted to add it to the poster, there was no conceptual understanding beyond that initial excitement of finding the formula.  To progress further is an order of magnitude harder and is not really about frustrated students being denied instruction by their teachers.  So I'm a bit stuck in the end between these two tensions.

This also brought to mind another online exchange to the effect that we spend too much attention on quadratic and polynomial functions in general and that they don't occur naturally much beyond the physics of trajectories. The next step in this argument usually goes given that Wolfram Alpha can instantly solve a quadratic, cubic why spend so much time learning the techniques behind them anyway? And that line of thinking is my worry about the natural result of tilting at the first windmill too long.   That is to say, after spending a great deal of energy to increase conceptual understanding but still seeing an imperfect result, we could easily bounce the other way and question whether we should be teaching a subject like solving quadratics (unaided) at all. And at least for the moment, I still believe that quadratics are inherently interesting, the physics connection is enough of an external justification and nothing else feels like a workable replacement to justify abandoning this piece of the curriculum. But I'm wavering a little a bit and I'll come back to this topic in a future post.

Lets go  back to the original question of "Why don't we teach the cubic as well?".  Interestingly enough last spring I listened to a podcast with Sam Vandervelde: [podcast link](https://artofproblemsolving.com/news/aftermath/aftermath-running-a-school-for-math-lovers-with-sam-vandervelde)   where he talked about doing exactly that with kids.  It sounded fascinating at the time, and I remember playing around on a plane to decide how I might do it.  The main problems for me were, I  would need all the kids to be past Algebra 2 and it probably would work best taught over several adjacent days not once a week.  I could definitely see the formula being used as a capstone project for a motivated student(s)  and perhaps I should followup and see if I can get a copy of the curriculum Sam used to brainstorm some more about this.   In theory, though I could actually show the video above to the kids and conceptually touch on how things work without really delving deeply. The animated algebra Mathologer uses, works really well that way.

# Back to the Video
Focusing back on the video itself,there were several really interesting observations that I particularly liked. One came right at the start where he casually mentions that all cubics have rotational symmetry.

![]({{ site.baseurl }}/assets/img/cardanos-method/blogger_0458a726.gif)

I hadn't considered this fact before but it follows almost immediately from a few simple facts:

- One of the first things done to solve cubics is to to depress the function into the form ax^3 + bx + c.     We can always do this via an appropriate substitution.
- But at that point the resulting equivalent function is basically odd except for the constant term.
- We can then translate the curve down to a^x3 + bx without changing its shape to produce a true odd function and all such functions have rotational symmetry since f(x)=-f(-x)

![]({{ site.baseurl }}/assets/img/cardanos-method/blogger_0e3d0a66.png)

What's even niftier is that the line of symmetry  for the translated function which is also the tangent at that point can be found via polynomial division  by dividing by $ (x-0)^2  and its just remained i.e. the linear piece of that function: $y = bx$.

I also really enjoyed the discussion of using trig functions to produce simpler forms of solutions especially for cases where one root is rational.  This where you get a huge payoff for a geometric understanding of multiplying complex numbers.  Not mentioned here but also an interesting connecting is the tie in with the 3rd root of unity: basically you can take one solution and multiply by a 3rd root and always get another solution.

Finally there were several exercises left for the read at the end which I haven't had time to think about.  [Marden's Theorem](https://en.wikipedia.org/wiki/Marden%27s_theorem) in particular seems exciting:

![]({{ site.baseurl }}/assets/img/cardanos-method/blogger_f6c65d20.png)

"Suppose the zeroes *z*1, *z*2, and *z*3 of a third-degree polynomial *p*(*z*) are non-collinear. There is a unique ellipse inscribed in the [triangle](https://en.wikipedia.org/wiki/Triangle) with vertices *z*1, *z*2, *z*3 and [tangent](https://en.wikipedia.org/wiki/Tangent) to the sides at their [midpoints](https://en.wikipedia.org/wiki/Midpoint): the [Steiner inellipse](https://en.wikipedia.org/wiki/Steiner_inellipse). The [foci](https://en.wikipedia.org/wiki/Focus_(geometry)) of that ellipse are the zeroes of the derivative *p'*(*z*)."

This seems tantalizingly close to the medial triangle that encloses a parabola as well.
