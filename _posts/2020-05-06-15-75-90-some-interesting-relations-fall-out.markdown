---
title: "15-75-90  Some interesting relations fall out"
date: 2020-05-06 00:38:00 +0000
tags:
  - 15-75-90
author: me
---

I'm going to do a small dive here on another 15-70-90 problem from @_eylem_99.  Unlike normal I'm going to skip most of the problem solving process and instead focus on some techniques in the middle.  This time around I chose to eventually play with extending one of the lines to from a 30-60-90 triangle and took advantage of the similar triangles that came out of that.

![]({{ site.baseurl }}/assets/img/15-75-90-some-interesting-relations-fall-out/blogger_0a026dc9.JPG)

![]({{ site.baseurl }}/assets/img/15-75-90-some-interesting-relations-fall-out/blogger_289c0537.JPG)

The part of this proof that I'm concerned with here is the nested radicals.  These look hopelessly awful at first but we can leverage familiarity with them to avoid having to square everything at step 6 which would just produce more nested radicals and a quadratic equation to boot.

This flows from a previous post on the alternate ratios forms of the 15-75-90 triangle: [Link to Post](https://blog.mathoffthegrid.com/2019/08/15-75-90-alternate-forms.html)

**The 15-75-90 Triangle ratios looks like this:**

![]({{ site.baseurl }}/assets/img/15-75-90-some-interesting-relations-fall-out/blogger_cc61aa59.JPG)

**Or this way:**

![]({{ site.baseurl }}/assets/img/15-75-90-some-interesting-relations-fall-out/blogger_20e396ff.JPG)

That means we also have some convenient nested radical conversion formulas via the equivalent ratios:

I.e. you can express the equivalent triangle ratios from the two different representations as follows:

$$ \frac{2 \sqrt{2 - \sqrt{3}}}{1} = \frac{4}{\sqrt{6}+\sqrt{2}} =  \sqrt{6} -  \sqrt{2} $$

And out pops this conversion:  \(  \sqrt{2 - \sqrt{3}}  = \frac{\sqrt{6} -  \sqrt{2}}{2} \)

Playing around further we can also find values for: \( \sqrt{2 + \sqrt{3}} \) as follows:

$$ \sqrt{2 + \sqrt{3}} \cdot \frac{\sqrt{2 - \sqrt{3}}} {\sqrt{2 - \sqrt{3}}} = \frac{ \sqrt{4 - 3}} {\sqrt{2 - \sqrt{3}}}  $$

$$ \frac{ \sqrt{4 - 3}} {\sqrt{2 - \sqrt{3}}} = \frac{1}{\sqrt{2 - \sqrt{3}}} $$

$$ \frac{1}{\sqrt{2 - \sqrt{3}}} = \frac{2}{\sqrt{6} -  \sqrt{2}} $$

$$ \frac{2}{\sqrt{6} -  \sqrt{2}} =  \frac{\sqrt{6} + \sqrt{2}}{2} $$

So interestingly: : \( \sqrt{2 + \sqrt{3}} = \frac{\sqrt{6} + \sqrt{2}}{2}  \) the exact complement of before.

Blast from the Past

The other amusing story behind this was I was fairly sure that there was a more elegant approach to this problem that avoided all the algebra. I ended up asking @eyelem_99 and sure enough there was and lo and behold I had submitted it to him a few years back when he had posted this problem originally.   It just goes to show how I end up with different approaches given enough time to forget my previous work.  Both cool and simultaneously embarrassing.

![]({{ site.baseurl }}/assets/img/15-75-90-some-interesting-relations-fall-out/blogger_4f9c2505.JPG)

