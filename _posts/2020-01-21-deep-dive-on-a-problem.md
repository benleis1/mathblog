---
title: "Deep Dive on a Problem"
date: 2020-01-21 21:56:00 +0000
tags:
  - digression
  - algebra
author: me
---

Once again the Math Circle didn't meet this time due to MLK Day rather than snow.  In fact, next week, I have an offsite at work which is going to interfere with the schedule as well. I'm, hoping to find someone else to fill in and give the next MOEMS contest piece.  3 weeks is too long to go without getting together,

However, I did have a few kids over at the house on the weekend to practice for AMC 10 and that allowed me to play with a problem that is on my mind:

Given:  f(x) = (1+x)(2+ x)(3 +x)(4 + x)  find the minimum value of f(x)

My first thought on seeing a slightly obfuscated variant of this in a contest question for 7th and 8th graders was what course level is needed to solve this? (Algebra, Algebra 2, Calculus?). I actually asked online and received a variety of answers mostly landing on Algebra 2. My own feeling after solving this myself was that it would be fairly difficult to do even then.

So let's start with 2 paths of analysis and then I'll talk about how I guided the discussion with the students.

Symmetry

 both; text-align: center;">
![]({{ site.baseurl }}/assets/img/deep-dive-on-a-problem/blogger_bf2895ae.png)

The key observation for me about f(x) and the one I went for first is that its symmetrical with an axis of symmetry around x = 5/2.  This type of function is typically easier to analyze when translated back so the axis of symmetry is around the origin (and that has no effect on the minimum value).

So depending on how you conceptualize this, either substitute w = x + 2.5,** translate **the function to the right by 2.5 or depress the cubic term to get:

$$ f(w) = (w - \frac{3}{2})(w - \frac{1}{2})(w + \frac{1}{2})(w  + \frac{3}{2}) $$

For me this form very cleanly shows the symmetry and also suggests what you might do next i.e. combine the terms to form differences of squares

$$ f(w) = (w^2 -\frac{9}{4})(w^2 -  \frac{1}{4}) $$.

And from here while this is still a quartic, its also really a quadratic in disguise as well:

Let y = w^2 = (x + 2.5)^2

$$ f(y) = (y -\frac{9}{4})(y -  \frac{1}{4}) $$.

We can then complete the square to get:  $  f(y) = (y - \frac{5}{4})^2  - 1 $

And see that the vertex and minimum value is at -1.

**Factoring Alternative:**

Another pathway you could pursue is to take a look at the binomials the parent function splits into and see what pops out. This is motivated by the idea we can more easily find minimums with quadratics than any other polynomial type.  There are also only 3 combinations to check:

- (x + 1)(x + 2)   and (x+3)(x+4).  This leads to $ (x^2 + 3x + 2 )(x^2 + 7x +12) $
- (x + 1)(x + 3)   and (x+2)(x+4).  This leads to $ (x^2 + 4x + 3)(x^2 + 6x +8) $
- (x + 1)(x + 4)   and (x+2)(x+3).  This leads to $ (x^2 + 5x + 4)(x^2 + 5x +6) $

The final form is the most symmetrical: effectively (y + 4)(y + 6).  So once again you could complete the square on this to get:

$$ y = x^2 + 5x.$$

$$ f(y) = (y + 4)(y + 6) = (y + 5)^2  - 1 $$

Not surprisingly the same combination of terms as in the first approach has led to same solution.

Enter The Kids
The problem is that  I think either path is fairly complex and I was unsure how much (if any) structure would be needed for actual students to make it through.  So since I had a few kids around to try things out on. I gave them all the problem ... and as expected they stared at it and had trouble getting a handle on what to do.

So I started with a few general questions:

- What shape do you think the graph will look like? 
- Why did you pick that curve?
- What else do you notice about the function off the bat?

Everyone one was quick to pick up on the zeros and w shape of the graph. It only took a little bit of questioning to tease out the axis of symmetry as well.

Next I asked for ideas of how to experiment and the notion of breaking up into 2 quadratics came up independently. I slipped in a comment about how that seemed like a good idea especially since its easier to find minimum values for quadratics.    After a bit of  slow thinking, I again intervened and asked how many ways can we split this up? After 3 was volunteered I suggested we split the different choices up, go off and calculate the results and compare what we found.

With all the alternatives in front of the kids the third and most symmetrical form did pop out. It took a bit of further prompting but they were then able to go and complete the square to solve the problem.

All told there was a lot of hand holding but I was working with limited time before everyone was picked up by their parents.

Slight Generalization

I didn't go any further with this. But as approach showed you can already translate the graph around without really altering its minimum value.  You can also uniformly stretch it via dilations like w = 2x.   What this is all saying is that: any quartic with four uniformly spaced roots is essentially similar and will look like our original graph. This is a slightly more complex version of "There is only 1 true parabola" 

 

Further Thinking

So I'd like to improve this in the future. The question is what series of problems or structure could make the problem solving more independent.   I suspect experience plays a big role here. You need to see more  "analyze this polynomial" type questions to get a better idea of how to handle them. But  I think there is definitely room for me to improve on my first attempt.

