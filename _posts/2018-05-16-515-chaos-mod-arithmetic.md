---
title: "5/15  Chaos + Mod Arithmetic"
date: 2018-05-16 18:34:00 +0000
tags:
  - modular arithmetic
  - fractals
author: me
---

We started the day looking at the problem of the week (from @mpershan):

Given a triangle with side length A, B, and C 

- If A/B = B/C = 1, then it's an equilateral triangle. 
- If A/B = B/C = 2, it can't be a triangle. 

What the largest value of A/B = B/C it's possible for a triangle to have?

I tried a slightly different structure this time and instead of asking for solution demos I asked the room for what they noticed about the problem.  This was actually fairly productive.   We started with several statements about the triangle inequality. That wasn't generally known so I demoed it on the board.  I like creating pictures where the two smaller sides are very short so its really clear they can't meet.  We then had the idea presented to fix one of the sides to length 1 and see what happens. Eventually the kids experimented with concrete numbers for the ratio of two and found the results: 1,2,4 violated the triangle inequality. Finally, one student came up with the general inequality x^2 

Based on an interesting post by Matt Enlow: I inserted a group activity next: [https://en.wikipedia.org/wiki/Chaos_game](https://en.wikipedia.org/wiki/Chaos_game).

In an nutshell:

- Start with an equilateral triangle.
- Pick a random point within it.
- Randomly select a vertex and find the next point half way between the  last one and that vertex.
- Repeat

After thinking about  some previous feedback comments I chose to do the simulation on a very large communal piece of butcher block paper  (3 ft x 3ft).  If I had a larger sheet I would have gone even bigger.  I drew an equilateral triangle using a standard intersection of 2 arcs methods with a tape measure which actually elicited some discussion. Then everyone crowded around the side of the paper and we took turns rolling the dice, measuring the next point and marking it. (This also let me keep a rough tab that the points were  accurate.)  At strategic points I had the kids make predictions about what they observed.   We generated over 30 points which takes a while but gave everyone a chance to roll the dice at least twice.  This is enough to see the beginning but not the full pattern.  But the kids were already able to make a good conjecture about why you couldn't get back to the center. After this point I switched to an internet simulation:

[http://thewessens.net/ClassroomApps/Main/chaosgame.html?topic=geometry&id=15](http://thewessens.net/ClassroomApps/Main/chaosgame.html?topic=geometry&id=15)

This let me run thousands of random choices and show the emerging Sierpinski triangle. As I hoped this produced a lot of spontaneous "Wows"  We had a bit more followup fractal discussion but if I repeated I would love to find a second half that thematically linked here.

Finally I returned to my original plan to go over a bit of Modular arithmetic using a Math Circle structure from   [  https://math.berkeley.edu/~jhicks/links/MathCircleBook.pdf](https://math.berkeley.edu/~jhicks/links/MathCircleBook.pdf)    This is a bit dry for Middle School although I like the starting magic trick and that did work well. What  I ended up doing was printing enough packets for pairs to work on and doing the first few questions as a group with some  structured lecturing on my part and then circulating to help groups work through the later parts of the set. Overall: I kept the room moving and I finally introduced the topic which was a goal but I think there is more room to grow this session in the future.    I think focusing on multiplication and addition tables is one of the more natural pieces to use and perhaps dropping some of the formal linear congruence proofs. For almost all of these, I found I was suggesting the kids try concrete numbers first and observe patterns to get at what the packet was suggesting.