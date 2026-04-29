---
title: "Going one step beyond Heron's Formula"
date: 2020-11-15 22:58:00 +0000
tags:
  - herons formula
  - geometry
author: me
---

![]({{ site.baseurl }}/assets/img/going-one-step-beyond-herons-formula/blogger_662b1b78.jpg)

Above I've found the incenter of the triangle at the intersection of the angle bisectors and rewritten all segments lengths in terms of  the semi-perimeter and and side lengths.  This is a great exercise to have someone work through.  For me the process highlighted a lot of the structure of how the incircle works.
- Fundamental tool: The law of cosines gives us an expression for cos θ  in terms of only the side lengths\( a^2 + b^2 - 2ab \cdot \cos \theta = c^2 \)    \(\rightarrow\)   \( \cos \theta = \dfrac{a^2 + b^2 - c^2}{2ab} \)
The half angle formulas let us break that downA quick chase of the side lengths on the outside via the congruent triangles will find their formulas in terms of s and a,b,cApplication

I have  a fairly traditional derivation of Heron's Law here: [https://blog.mathoffthegrid.com/2017/10/herons-formula.html](https://blog.mathoffthegrid.com/2017/10/herons-formula.html) but the identities above allow this more unconventional approach.
1. Start with standard trigonometric definition  for \( [ABC] = \dfrac{1}{2}bc \cdot \sin(A) \)
2. Expand using the double sine formula to:  \( [ABC] = bc \cdot \sin(A/2) \cdot \cos(A/2) \)
3. Substitute in the values from above to get \(  [ABC] = bc \cdot \sqrt{\dfrac{s(s-a)}{bc}} \cdot \sqrt{\dfrac{(s-b)(s-c)}{bc}} \)
4.  Which simplifies  to the familiar Heron's Formula \( [ABC] = \sqrt{s \cdot (s-a)(s-b)(s-c)}  \)

  