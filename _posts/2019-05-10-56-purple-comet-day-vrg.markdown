---
title: "5/6 Purple Comet Day - VRG"
date: 2019-05-10 20:07:00 +0000
tags:
  - purple comet
author: me
---

Where we last left off:  The [Purple Comet](https://purplecomet.org/) math contest wasn't well aligned this year with our schedule. It ran from  Tue - Fri over a period of time that only included one Monday (the day on which we meet) but that happened to be the week of Spring Break.  I really like the problem sets and I think its fun to do so I kept both the questions and answers and saved them to use anyway.

This week seemed like a good one to run the informal version of the contest. I don't expect the kids to do well enough that not being officially ranked matters. In fact that's probably a plus of doing things this way.  My one regret is that we can't used the normal computerized entry system which based on experience adds an element of excitement.

I thought a lot about how to structure things given the situation. Should we do all the problem communally, only pick a subset, organize into a relay etc?   Finally, I decided that since we hadn't done anything competitive in a while it would be okay to maintain the original contest format. However, I was also really interested in mixing things up a bit and randomly grouping the kids.  Most of the time I feel that as a club I should let the kids pick where they sit and whom they work with. There's all of math class during the day to deal with formal seating charts.  This works reasonably well although as you'd expect the kids self segregate by grade.  But I've been feeling that several of the regular tables have a tendency to become chatty and a little off focus without prodding and it would be nice to shake things up. I also do want the kids to interact with some of the others students they don't normally do so with in the interest of building a communal culture.

So I started by cutting up a bunch of squares of paper.  The kids were very curious "Are we voting on something" .   "No we're doing Visible Random Grouping!" was my reply to the mostly mystified room.  I then asked for suggestions on how large a group everyone wanted to work in during the contest. Based on the response I went for 3 larger groups.  I then numbered the slips paper 1-3 and had the kids draw their slot.

Short story, the groupings were very successful. Overall on average each of them worked in a more sustained fashion than any of the normal groups do and no one complained about the selection.  (Perhaps I should be less cautious about working this way on a semi regular basis.)  I also greased the pump so to say by bring a few bags of gummy candy and going around every 5-10 minutes providing a "brain boost".   Bonus: I've only graded one of the 3 sets so far but already its a new record high score us.

My  dilemma for next week is that this did not permit us any time to discuss answers.  Based on observation, that doesn't really bother most of the students. But it does matter to me and I think the most learning comes from these post-contest discussions.  Twenty questions are too many to maintain focus. So my plan is to pare down to 3-5 to talk about based on what everyone got correct.

Small Addendum:

Since I'm looking over the official solutions in preparation for next week I noticed this one:

![]({{ site.baseurl }}/assets/img/56-purple-comet-day-vrg/blogger_d09db03e.PNG)

Oddly either way doesn't seem like the most straightforward way to go So here's my variant:

14) For real numbers and b, \(f(x) = ax + b\) and \(g(x) = x^2 - x\)  

- \( g \circ f (2) = 2\) 
-  \(g \circ f (3) = 0 \)
- \( g \circ f (4) = 6 \) 

Find \( g \circ f (6) \).

The first question to ask is what kind of equation is g(f(x))?  Even without checking, the fact that we’re given 3 points that uniquely identify it strongly suggests this is a quadratic.  And substitution confirms that:  \( g \circ f  = (ax + b)^2 - (ax + b) = a^2x + 2abx + b^2 -ax - b\)

So we don’t really need to understand the intermediate functions f and g at all to finish solving this. Every parabola is uniquely determined by 3 points.  In other words = \( g \circ f  = Ax^2 + Bx + C \)

for some constant A,B,C. We then plug in the given points (2,2) (3,0) and (4,6) to get a simple linear system:

4A + 2B + C = 2

9A + 3B + C = 0

16A + 4B + C = 6

Solve for A,B,C:  \( g \circ f = 4x^2 -  22x + 30 \)  and then plug in the value of 5.

But since this is at its heart an exercise in polynomial curve fitting, its really well suited to my  favorite technique, looking at the polynomial deltas and then just going backwards on the 4th row:

x

g(f(x))

1st [](https://www.codecogs.com/eqnedit.php?latex=%5CDelta%0)

2nd [](https://www.codecogs.com/eqnedit.php?latex=%5CDelta%0)

2

2

3

0

-2

4

6

6

8

5

20

14

8

