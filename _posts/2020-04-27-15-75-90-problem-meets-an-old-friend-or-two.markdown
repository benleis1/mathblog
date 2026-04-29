---
title: "15-75-90 problem meets an old friend or two"
date: 2020-04-27 02:19:00 +0000
tags:
  - 15-75-90
  - piled squares
author: me
---

The theme of this post is connections. We're going to start with a problem that suggests another few I've talked about before and I promise a 15-75-90 connection by the end.

So let's take a look at a recent puzzle from @_eylem_99.  My first thought when examining it was it would easily be solved via the law of cosines. Even though I usually prefer to find non-trig solutions  I could see three triangles as follows:

![]({{ site.baseurl }}/assets/img/15-75-90-problem-meets-an-old-friend-or-two/blogger_26746d1e.JPG)

And applying the law of cosines seems like a straightforward path to proceed on.

- \( 8 + 27 - 12 \sqrt{6} \cos{(\alpha)} = 2^2 \)
- \( 27+ 7 - 6 \sqrt{21} \cos{(\beta)} = 2 s^2 \)
- \( 8 + 7 - 4 \sqrt{14} \cos{(\alpha + \beta )} = s^2 \)

\(  \cos{(\alpha + \beta)} = \cos{(\alpha)} \cdot \cos {(\beta)} - \sin{(\alpha)} \cdot \sin{(\beta}) \) and you can solve for cosine alpha and cosine beta and then compute the sines as well. But ... it gets really messy and unattractive quickly.

I tried a few different alternatives for what to solve for and none made the resulting equations any prettier. So since I didn't really want to go down this path, I tabled it for a while and went back to square one.

First Connection

One problem this reminded me of from the past was from this [Post](https://blog.mathoffthegrid.com/2019/03/the-curious-case-of-equilateral.html).

!![]({{ site.baseurl }}/assets/img/15-75-90-problem-meets-an-old-friend-or-two/blogger_489c09ea.PNG)

This was mostly because the equilateral triangle above had side lengths of \( \sqrt{7} \). Which matched one of our given values and the other sides were 1, 2 and 3 while we have square roots of these values given to us.

So I tried embedding some equilateral triangles on the  \( \sqrt{7} \) edge of the figure to see if I could create an equivalence and later wedged the 1 -2 - \( \sqrt{7} \) triangle in as below:

![]({{ site.baseurl }}/assets/img/15-75-90-problem-meets-an-old-friend-or-two/blogger_7e5929d0.JPG)

As it turns out that triangle **exactly aligns on the diagonal** and yes this is a related piece of the construction. Which is highly suggestive and from there I could use the Law of Cosines to directly calculate the value of s. But I still didn't really want to use trigonometry and I didn't see a path to prove the alignment either.

**[Challenge to the reader: Can you prove why this alignment occurs?]**

I went down another tangent at this point trying to relate the side two sides of the top triangle via  a right triangle like this: 1  -  \( \sqrt{7} \)  - \( 2 \sqrt{2)} \)  The hope was to align everything so this interplayed with the third edge or created a nice line up.

![]({{ site.baseurl }}/assets/img/15-75-90-problem-meets-an-old-friend-or-two/blogger_fcf6470e.JPG)

Second Connection

Again this was an interesting avenue but nothing was immediately popping out at me. But it did push me in the direction I finally took. I was already starting to look at the squares of the side lengths above while forming right triangles and that made think of the classic construction from here:  [Post](https://blog.mathoffthegrid.com/2015/05/cool-geometry-problem.html)

Several nifty invariants exist in this construction:

- All four triangles have the same area.
- The area of  the triangles can be expressed in terms of the squares via Heron's formula.
- There are also a bunch of congruent diagonals within it including one that lined up with the one we were given. That meant its pair could be used which might align better with the other two given sides.  

After adding the paired diagonal to AE, I had realigned the given edges into a much more easily analyzed pair of adjacent right angles. 

![]({{ site.baseurl }}/assets/img/15-75-90-problem-meets-an-old-friend-or-two/blogger_85a0dfc0.JPG)

**As promised the 15 - 75 - 90 has partly appeared.**

I can  actually take this a step farther and compute both the area of the initial square and triangle from here as well:

- The area of  the quadrilateral  ACEF is just \( \frac{1}{2} \cdot (3 \sqrt{3})^2 = \frac{27}{2} \)
- But its also half of  area of two of the square plus 2 triangles .So letting S = the area of the square BCDE and T be the area of the triangle ABC  we get  \( 2T + \frac{1}{2} S + 4 = \frac{27}{2} \)
- We can also compute the area of  T via the modified Heron's formula to be: \( T =   \frac{1}{4} \sqrt{ \left( 4\cdot 8 \cdot 7 -  (8 + 7  - S^2)^2 \right) }\)
- Substituting the formula for T into the first equation we arrive at:

$$ \frac{1}{2} \sqrt{ \left( 224 - (15  - S^2)^2 \right)} +  \frac{1}{2} S  = \frac{19}{2} $$

$$ \sqrt{(30S - S^2 - 1)} = 19 - S $$

$$ 30S - S^2 - 1 = 361 - 38S + S^2$$

$$S^2 - 34S + 181 = 0 $$

This via the quadratic formula has two solutions  \(  S = 17 \pm 6\sqrt{3} \) but only the negative one satisfies the triangle equality for triangle ABC.  We can check  plug this into the original equation and also find that \( T =  \dfrac{19 - S}{4} = \dfrac{1 + 3 \sqrt{3}}{2} \)

A return to the Law of Cosines

Based partly on another solution I saw on twitter there is a way to resurrect the original idea of using the law of cosines and it has a bigger 15-75-90 payoff.

![]({{ site.baseurl }}/assets/img/15-75-90-problem-meets-an-old-friend-or-two/blogger_1a3b8377.JPG)

Instead of working around angle A, we'll focus on B.  That's more interesting because angle EBA = 90 + CBA  and therefore the cos(EBA) = -sin(CBA).  So plugging away at the law of cosines we get:

- \( 8 + s^2 - 4 \sqrt{2} \cdot s \cos{(\beta)}   = 7\)
- \( 8 + s^2  - 4 \sqrt{2} \cdot s \cos{( 90 + \beta)}   = 27\) or \( 8 + s^2  + 4 \sqrt{2} \sin{( \beta)} = 27 \)

Now we can solve for cos and sin  and the apply the Pythagorean relationship.

- \( \cos{(\beta)} = \dfrac{1 + s^2} {4 \sqrt{2} \cdot s } \)
- \( \sin{(\beta)} = \dfrac{19 - s^2} {4 \sqrt{2} \cdot s } \)

So:  \( (1+ s^2)^2 + (19 - s^2)^2 = (4 \sqrt{2} \cdot s)^2 \)

and after letting \(S = s^2\)  this simplifies to the following familiar quadratic: \(S^2 - 34S + 181 = 0 \) which we also derived earlier. 

This time around we don't no angle ɑ yet. But with the side length s in hand we can apply the law of cosines for a final time:

- \( 8 + 27 - 12 \sqrt{6} \cos (\alpha ) = 17  - 6\sqrt{3} \)
- \( \cos (\alpha) = \dfrac{ 18 + 6 \sqrt{3} } {12 \sqrt{6} } = \dfrac{ 3  + \sqrt{3}}{2 \sqrt6} \)

Rationalizing the denominator we get:

- \( \cos (\alpha) = \dfrac{ 3 \sqrt{6}  + 3 \sqrt{2}}{12} = \dfrac{\sqrt{6} + \sqrt{2}}{4} \)

And this ratio should look familiar if you've followed some older posts: [Post](https://blog.mathoffthegrid.com/2019/08/15-75-90-alternate-forms.html)

!![]({{ site.baseurl }}/assets/img/15-75-90-problem-meets-an-old-friend-or-two/blogger_20be7fac.png)

Sure enough its enough to prove  ɑ  is 15 degrees if you're familiar with the ratios!

