---
title: "Approaching the Tangent"
date: 2020-07-16 00:31:00 +0000
tags:
  - tangent
  - calculus
author: me
---
## Preamble

The Covid pandemic has disrupted my writing habits and I've not been nearly as regular as of late. Normally I try to write down some thoughts at least once a week and this year I  haven't even finished the EOY summary post. So much is going on and there is so much stress to handle in our new reality.  But I was reminded of why I write by a chance tweet I read from an acquaintance, Nat.  I'll paraphrase and say he had an idea that was too long to encapsulate in a 280 character tweet but simultaneously he felt too pressed for time to commit it to a blog post.  My first instinct was to tweet an encouraging aphorism at him. I even went hunting for a good quotation online about the writing process.  I lean towards Hemingway's quip about typewriters and blood. After all, I enjoy reading his blog and want to offer up encouragement. But ultimately, I don't think people are looking for a reply like that when they open up online. I could "like" the tweet to show moral support but that just increases the randomness on everyone else's feeds and is a fairly hollow gesture at that.  And then I turned inward and thought about my own recent silence.  I've actually been  thinking a lot about various topics the last few days. Why not act rather than go through an awkward ritual online?  So this probably unnoticed gesture is in your honor Nat. Writing can be both a fierce urgency and a chain around one's neck at times. I hope you find the time and persistence to keep going and I'll model the same on my end.

## Tangents!

I've been thinking about tangent lines a bit for the last few months.  What started the process was working out  how to prove that polynomial division can be used to find the equation of tangent lines without directly using calculus.  Passing reference  to this: [here]({% post_url 2019-10-12-nwmc-19-post-conference-thoughts %}).  I was doing fairly well and then came to the inflection point case and realized my internal definitions were fuzzy and I had to return to first principles to get my handle around them.

Then I had another moment a day ago, in a discussion about beginning calculus students having difficulties with the concept that tangent lines can intersect a curve "sufficiently" far away from the point of tangency.  My theory is that tangents are not taught very deeply nowadays. For one unit probably around a few weeks in geometry tangent lines show up.

Sample geometry definition:

*A tangent to a circle is a straight line that touches the circle at one point, called the point of tangency. At the point of tangency, the tangent of the circle is perpendicular to the radius.*

But which part of this definition generalizes beyond a circle? Since typically this is as far as geometry goes nowadays I'd argue focusing on the touching in one point piece is the natural and unfortunately misleading generalization. (I confirmed this idea is at least plausible after a conversation with my older son who hadn't even thought about whether tangents make sense in any other context)

## Next up Trigonometry
Its not strictly true that tangents then recede until calculus. The tangent function is usually introduced somewhere in Alg 2,  Geometry or Pre-Calc.  But this is so often not even directly explained at the time. Students are given the definition of  Tangents  = Opposite edge of a right triangle over the Adjacent one which is often related back to the concept of slope. But where does the name come from and does it have a link to the previous tangent lines?  Left unremarked I think this secondary exposure increases the fuzziness of the concept. Its a line and a ratio - but what is the common thread between them?

If you're lucky, somewhere in pre-cacl at least the unit circle will be introduced and after working on the ratios,  the mysterious connection is clarified.  As seen above the tan function is the length of the tangent segment on the unit circle from the x axis to the point (cos x, sin x).  Side note: the secant function really has a secant segment associated with it too.

## World of Curves

It would actually be useful in geometry to consider more tangent examples on various conics ala this one from @eylem_99

But in the absence of the time for that, its probably interesting to think what changes and what remains as you move towards less regular curves.

I think two ideas make sense to stress:

1) Continue from the geometrical approach and think about the tangent instead  as a limit of secant lines as the the two endpoints get closer and closer.   This abandons the notion of touching only once and introduces both limits and notion of the phenomenon being a local one. Its easier to understand via a drawing and or animation.  Another option is zooming in until the curve starts to approach a straight line but this doesn't bridge quite as  well to full fledged limit definition later on for me.

![]({{ site.baseurl }}/assets/img/approaching-the-tangent/blogger_6bfd412d.gif)

2) On non-circles the "left" and "right' side may have different secant limits in which case there is no tangent. This gets at the notion of smoothness or continuity.

## Some more definition stretching cases
The most glaring one is that of the straight line? What's the tangent to it?   In fact every secant is the same from any arbitrary point and therefore the line is its own tangent. (This is consistent with what happens later when you start taking differentials)  Notice here: the tangent touches at every point rather than a single one. So in some sense its the exact opposite of a circle.

Secondly are the pesky inflection points. Here the tangent lines cross the curve but only at one particular limit value.  The key is understanding why this is different than any other intersection of a line and a curve and  again the approaching secant lines are key,

For example:

![]({{ site.baseurl }}/assets/img/approaching-the-tangent/blogger_52175032.JPG)

Inflection point tangent on both sides of the curve.

![]({{ site.baseurl }}/assets/img/approaching-the-tangent/blogger_a3fc6d60.JPG)

Versus any other line through the inflection point
