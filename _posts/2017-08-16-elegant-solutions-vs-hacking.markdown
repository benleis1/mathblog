---
title: "Elegant Solutions vs. Hacking"
date: 2017-08-16 00:13:00 +0000
tags:
  - digression
  - geometry
author: me
---

This is a study in contrasts around a fun problem by @eylem:

![]({{ site.baseurl }}/assets/img/elegant-solutions-vs-hacking/blogger_097848a1.jpg)
An elegant solution to this would be as follows:

![]({{ site.baseurl }}/assets/img/elegant-solutions-vs-hacking/blogger_8dbce044.png)

- After angle chasing to find angle DEA is 45 degrees extending DE to make a full right isosceles triangle with side lengths of 15 sqrt(2)/2. 
- Use the Pythagorean Theorem to find the missing side length of AGE. This gives you the base of the triangle DE also,
- Then note AGE is congruent to the halves of CDEs so you also know the altitude.
- Apply the triangle area formula.

But there are other *shadier* options for solving the problem:

Instead, we can take advantage of patterns in the values of the lengths and the then use knowledge about 3-4-5 triangles (see: [12-triangles-and-their-link-to-pythagorean-triples]({% post_url 2016-10-28-12-triangles-and-their-link-to-pythagorean-triples %})) to crack the problem.

![]({{ site.baseurl }}/assets/img/elegant-solutions-vs-hacking/blogger_2944ef6f.jpg)

This actually exposes a bit of structure that was not seen in the first solution.  If you didn't think to try the educated initial guess, you could more directly find it by setting up a simple quadratic equation based on the Pythagorean Theorem:

$$ (5\sqrt{5})^2 + (15 - x)^2 = x^2 $$