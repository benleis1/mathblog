---
title: "Dot in a Box: Addendum"
date: 2020-03-30 21:39:00 +0000
tags:
  - digression
  - geometry
author: me
---

This is a continuation to my last post: [https://blog.mathoffthegrid.com/2020/03/dot-in-box.html](https://blog.mathoffthegrid.com/2020/03/dot-in-box.html)

After I posted on twitter, @diegorattagg posted back some further variants on this problem that he had tweeted a few months ago. (I knew I had seen it before even if I couldn't remember the specifics.)  This was propitious because his version has a super pleasing result.

 Since I was looking at this immediately after writing up the last post a few thoughts came to mind:

- I already have a general formula for the area of the square  in terms of the segments.
- That can be used to immediately derive the length of the diagonal
- I can then apply modified Heron's Formula again for the interior triangle's area.

This is not necessarily the most elegant procedure but its fairly straightforward and half of the work was done already.  So let me setup a relabeled version of the box below:

![]({{ site.baseurl }}/assets/img/dot-in-a-box-addendum/blogger_36108d37.JPG)

- Let \( A = a^2, B = b^2, C = c^2, D = d^2\) 
- Area of ABCD = S = s^2 = \( \frac{1}{2}\left((B + D) + \sqrt{4BD - (A-C)^2} \right) \)
- The diagonal BD therefore has length \( \sqrt{2} \cdot s \)
- So apply the modified Heron's formula for \( \triangle{BED} \):

\( [BED] = \frac{1}{4} ( \sqrt{4BD - (B  + D - 2S)^2 }) \)

\( [BED] = \frac{1}{4} ( \sqrt{4BD - \left(B  + D - \left((B + D) + \sqrt{4BD - (A-C)^2} \right)  \right)^2 } \)

\( [BED] = \frac{1}{4} ( \sqrt{4BD - \left( \sqrt{4BD - (A-C)^2} \right)^2 } \)

\( [BED] = \frac{1}{4} ( \sqrt{4BD - 4BD + (A-C)^2}) \)

\( [BED] = \frac{1}{4} ( \sqrt{(A-C)^2} \)

\( [BED] = \frac{1}{4} |(A-C)| \)

Everything just unwinds and we're left with the extremely simple expression at the end!  What's a bit less satisfying is that doesn't motivate what's going on well.

Starting from Scratch

So if we start from scratch, this is my favorite approach so far:

![]({{ site.baseurl }}/assets/img/dot-in-a-box-addendum/blogger_20d5311f.JPG)
First add in the horizontal and vertical segments to the middle point P: FP, and EP  with lengths of  x and y respectively and let s be the square side length again.

**Note**: When I originally did this, I set up x and y a bit more conventionally with the x segment going to the left.  That works too but its a bit cleaner to see what's going on with this orientation.

Now we can do some basic area Math (bearing in mind APD is our target triangle):

\( [ABD] =   [BPD] + [BPA] + [APD]  \)

\( \dfrac{1}{2} s^2 = \dfrac{1}{2}(s \cdot y + s \cdot (s-x))  + [APD] \)

\(  [APD] =  \dfrac{1}{2}  (s \cdot (x - y)) \)

Next we just need to look at Pythagorean relationships we have for the diagonal segments. [My choices are definitely informed by solving this once. But you could experiment and look for groups that get towards our target equation above for APD]   In particular:

- \( x^2 + (s-y)^2 = c^2 \)  or expanded   \( x^2  + s^2 - 2s \cdot y + y^2 = c^2 \)
- \( (s-x)^2 + y^2 = a^2 \)  or expanded   \( s^2 -2s \cdot x  + x^2 + y^2 = a^2 \)

After subtracting one from the other we get  \( 2s \cdot x - 2s \cdot y = c^2 -a ^2 \)  which is exactly what we need for above.

So combining the two expression: \(  [APD] =  \dfrac{1}{4} (c^2 - a^2) \)   

**Note**: Perhaps you noticed the slight difference from the first attempt. This implicitly relies on the relationship that c is greater than a because of the relative location of P.  You can generalize a bit and through in the absolute value  like I did the first time and achieve a more general version.

Once More with Rotation/Dilation
Finally, another approach would  be to go back to rotating like before. My problem with this is that mostly I tend to just end up repeating myself and calculating the total area and then going to the first paragraph. However, there is a clever trig shortcut if we notice that if we rotate the inner triangle APD and place a dilated version on the edge at AEB we create a 45 degree angle at the bottom. In fact, the dilation shrinks the triangle by sqrt(2) and therefore we can use SAS to show AEP is right isosceles as indicated below.  

![]({{ site.baseurl }}/assets/img/dot-in-a-box-addendum/blogger_1927d4f1.JPG)

From there we can use the law of cosines of find \( \cos{\angle{PEB}} \) and since 90 + PEB  is the original angle APD, its also \( \sin{\angle{APB}} \) This ratio can now be used to calculate the triangle area using the standard trig formula  Area = 1/2 ab sin theta.

In sum three different approaches and a really simple result. My only regret is I don't see any construction that directly has the a^2 - c^2 quantity represented in it yet.

