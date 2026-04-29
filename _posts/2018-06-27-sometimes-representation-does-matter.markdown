---
title: "Sometimes representation does matter"
date: 2018-06-27 19:29:00 +0000
tags:
  - digression
  - trigonometry
author: me
---

This is a small observation based on a post from @samjshah on the topic of the trig double angle formulas:

- \( \sin{2\theta} = 2 \sin{\theta} \cdot cos{\theta} \)
- \( \cos{2\theta} = \cos^2{\theta} - \sin^2{\theta} \)

Sam used the construction below to derive the formulas which is a bit different than how I usually think of doing it.

I immediately thought to myself, I can assign x to the base of one triangle and all the relationships must fallout from either the Pythagorean Theorem or similar triangles.  This is certainly true and it looked like this:

![]({{ site.baseurl }}/assets/img/sometimes-representation-does-matter/blogger_91436bbd.png)

So for example using the direct definition of sin and cosine:

$$\sin{2\theta} = \frac{\sqrt{1-x^2}}{1} = \sqrt{1 - x^2} $$

which you can compare to:

$$ 2 \cdot \sin{\theta} \cdot \cos{\theta} = 2 \cdot \frac{1+x}{\sqrt{2} \cdot \sqrt{1+x}} \cdot \frac{\sqrt{1-x^2}}{\sqrt{2} \cdot \sqrt{1+x}} =  \frac{2 \cdot (1 + x) \sqrt{1 -x^2}}{2 \cdot ( 1 + x )} = \sqrt{1 - x^2} $$

That was the expected result but didn't really seem that exciting to me.  But then I looked at  how Sam had done it. Rather than assigning x to the missing piece he directly used the trig value and did this:

![]({{ site.baseurl }}/assets/img/sometimes-representation-does-matter/blogger_5cdc59b9.png)

This time from the similar triangles BDE and ACF you get the following relationship:

$$\frac{BD}{BE} = \frac{AC}{CF}$$  or

$$\frac{2\sin{\theta}}{\sin{2\theta}} = \frac{1}{\cos{\theta}}$$ which after cross multiplication directly gives

$$\sin{2\theta} = 2 \sin{\theta} \cdot \cos{\theta} $$

So with this representation something much more insightful for me falls out.  Trig while offering a lot of power often has the ability to obscure geometric relationships. But as seen here sometimes with careful usage it can be quite interesting. **And of course the importance of the problem setup towards simple vs complex solutions to the same problem is much more universal.**