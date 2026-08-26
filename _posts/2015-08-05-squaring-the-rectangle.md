---
title: "Squaring the Rectangle"
date: 2015-08-05 23:12:00 +0000
tags:
  - notice wonder
  - tiling
  - number theory
  - brainstorming
author: me
---

This  [Tiling Problem](http://wordplay.blogs.nytimes.com/2015/06/15/enlow-2/?_r=0) published in wordplay by Matt Enlow looks like a great first day activity.

The question it asks is given an n x m rectangle what is the smallest number of squares it can be divided into. You can make it harder by requiring each of the squares be a different size.

!![](http://graphics8.nytimes.com/images/2015/06/19/crosswords/Matt-Enlow-Rectangle/Matt-Enlow-Rectangle-blog480.gif)

Its more in the noticing and wondering category but  hopefully allows the kids in the math club to find some interesting algorithms and patterns. 

Some history on the problem class:

[http://www.squaring.net/history_theory/brooks_smith_stone_tutte_II.html](http://www.squaring.net/history_theory/brooks_smith_stone_tutte_II.html)

This has a cool relationship to the Euclidean algorithm. If you do a greediest algorithm the final square size is the GCD.

The greedy algorithm basically find the quotient via the largest square with the remainder being what's left which is why its the same thing as the standard Euclidean algorithm to find the GCD.  Note: getting the kids to see this as division will probably take some experimenting i.e. ask the question "Is there a pattern to what the left over area is after you take away the biggest squares?"

See:  an animation half way down in the following link:

[https://en.wikipedia.org/wiki/Greatest_common_divisor](https://en.wikipedia.org/wiki/Greatest_common_divisor)

Which is something I've liked to develop but haven't found a good entree yet.  This may be it.

My main worry is whether there is enough time to fit this in if I also do the intro discussion. This feels like an almost full slot worth of activity. I could have everyone work on the conceptualizing of division and then split off with one set of kids looking for patterns on what's left over and a second looking for the smallest set of squares that tile the rectangle and patterns for finding them.

Semi-Related variant or math homonym:

How to take a rectangle and find a square with the same length. This requires the Pythagorean

theorem to prove.

[http://mathworld.wolfram.com/RectangleSquaring.html](http://mathworld.wolfram.com/RectangleSquaring.html)