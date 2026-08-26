---
title: "Two problems I'm looking at"
date: 2016-06-19 01:24:00 +0000
tags:
  - digression
  - math club ideas
author: me
---

I was reading a fun post over @ [http://eatplaymath.blogspot.com/2016/06/my-first-problem-set-for-my-problem.html](http://eatplaymath.blogspot.com/2016/06/my-first-problem-set-for-my-problem.html) where Lisa is brainstorming problem sets. She's inspired me to collate the material we did this year.  But in the meantime here's a teaser:[](https://www.blogger.com/)

![]({{ site.baseurl }}/assets/img/two-problems-im-looking-at/blogger_a5f433fd.jpg)

I don't usually include algebra problems but I ran into this one last night and its too good not to keep for future use when I have a group of older kids.  At first this problem seems like its missing enough information.  For example, you can't directly solve for $$x_1 .. x_7$$ since there are only 3 equations. However, if you assume that some linear combination of the 3 equations will equal the  target i.e.

$$f(x_1..x_2) = x_1 + 4x_2 + 9x_3  + 16x_4 + 25x_5 + 36x_6 + 49x_7 \\

g(x_1..x_2) = 4x_1 + 9x_2 + 16x_3  + 25x_4 + 36x_5 + 49x_6 + 64x_7 \\

h(x_1..x_2) = 9x_1 + 16x_2 + 25x_3  + 36x_4 + 49x_5 + 64x_6 + 81x_7$$

and

$$a \cdot f()  + b \cdot g() + c \cdot h() = 16x_1 + 25x_2 + 36x_3  + 49x_4 + 64x_5 + 81x_6 + 100x_7$$

This reduces to 7 equations in 3 unknowns The first and easiest 3 of them are:

$$(a + 4b +  9c) x_1 = 16x_1$$
$$(4a + 9b + 16c) x_2 = 25x_2$$
$$(9a + 16b + 25c) x_3 = 36x_3$$

Then these can be solved directly and it only remains to check if the solution (1,-3,3) works for the other 4 terms.

Or can you generalize and confirm:  $$ x^2  -3 (x + 1)^2 + 3(x+2)^2 = (x+3)^2$$

What's interesting is to examine the general problem afterwards for instance if there were only 2 equations is there a linear combination that works (nope)? What about four (this has multiple solutions)? I also find a hint of the third row of Pascal's triangle in the solution but haven't looked into whether that's a coincidence.

Update: its easiest to solve the general equation above  $$ ax^2  + b(x + 1)^2 + c(x+2)^2 = (x+3)^2$$ This reduces to:

$$a+b+c = 1, b+2c = 3, b + 4c = 9$$

Interestingly in 4 cubic terms the solution  to $$ ax^3 + b (x + 1)^3+ c(x+2)^3 +d(x+3)^3 = (x+4)^3$$  is {3,4,-6,4}. Once again close to the 4th term in the triangle and in 5 quad terms the solution is (1,-5,10,5). The binomial theorem is all over this problem so its not completely surprising but I'll keep thinking about it a bit more.

![]({{ site.baseurl }}/assets/img/two-problems-im-looking-at/blogger_cb975f60.jpg)

Folding problems are always fun. This one stands out because it uses the notion of proportionality twice in both direction i..e if you draw a line from one vertex of a triangle to somewhere in its base the ratio of areas of the two triangles are the same as the ratio of the two bases (since they share the same height).

![]({{ site.baseurl }}/assets/img/two-problems-im-looking-at/blogger_910fcc89.jpg)