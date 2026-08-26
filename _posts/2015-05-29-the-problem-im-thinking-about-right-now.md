---
title: "The problem I'm thinking about right now."
date: 2015-05-29 21:38:00 +0000
tags:
  - geometry
  - brainstorming
author: me
---

I worked with my son on this problem last night from AMC8 and I think its really interesting and plays off the previous pentagon problem I had given to the kids in the club.

![]({{ site.baseurl }}/assets/img/the-problem-im-thinking-about-right-now/blogger_f7b63148.jpg)

In the pentagon above $\angle A = 20 ^{\circ}$  The triangle containing A is isosceles. What is $\angle B$ + $\angle D$?

General Steps.

1. Determine the 2 other angles must be 80$^{\circ}$ since its an isosceles triangle. 

2. Find the supplementary angles on the interior.

![]({{ site.baseurl }}/assets/img/the-problem-im-thinking-about-right-now/blogger_3cf89f58.jpg)

3. Continue tracing the angles for the two triangle B and E since you have one corner already. I assigned x to $\angle B$ and that means its final angle must be 180 - (x + 80) = 100 - x. While I'm at it I added in its supplement on the interior 80 + x.

![]({{ site.baseurl }}/assets/img/the-problem-im-thinking-about-right-now/blogger_ac4104b1.jpg)

4. Repeat the process for $\angle E$ letting its value be y.  Which also derives an angle of 100 - y and a supplement of 80 + y.

5. Applying the fact that sum of the angle of the interior pentagon are 540 and we now know 4 of the angles, the fifth must be 540 - (100 + 100  + (80 + x) + (80 + y)) =  180 - x - y.  **Note: its not a coincidence that the sum of the angle pairs both contain 180 degrees.**

6. Now attack the final triangle spoke anchored by D.  Two of its angles are supplements of ones we've already found: 100 - y and x + y.  So $\angle D$   = 180 - ((100 - y) + (x + y)) = 80 - x.

7. Lo and behold when you add $\angle B$ + $\angle D$ the x cancels out: x + 80 - x = 80.

![]({{ site.baseurl }}/assets/img/the-problem-im-thinking-about-right-now/blogger_8fdbdf30.jpg)

In fact you can generalize this process to see the relationship between any interior angle of a triangle and 2 exterior spokes of the pentagon.

I think this is one of those interesting inherent relationships and would make a nice progression but I'm not sure if I can cram everything into a worksheet session. To make it work I'd need to:

- Review basic angle tracing for two intersecting lines and triangles.
- Review finding the sum of the angles of a polygon at least for a pentagon by breaking it into triangles.
- Walk through some more abstract angle tracing examples with variables. The symbol manipulation is a little abstract here.
- Give the problem and tell the kids to start tracing.
- Be ready to hint about assigning a variable to the two vertices or maybe just supply that from the start.

If I'm not satisfied this will work out I may just go back to my original ideas about doing a intro graph theory problem like the bridges of konigsberg.