---
title: "3/29 Euler Characteristic"
date: 2016-03-30 03:51:00 +0000
tags:
  - euler characcteristic
author: me
---

!![](http://blog.avasflowers.net/img/u/c78ae9c2ba91258b82ff6ea04897afbb.jpg)

And like that we're into the Spring session of Math Club. As I eluded to last week I have 5 new students including four new girls. So I brainstormed a lot about what I wanted to start with this week to draw everyone in. Basically, my goal was to find a game, that would be fun, participatory, and not require too much in the way of supplies. Along the way I found an interesting snap-cube challenge which I think I'll pick up in a future week now that I've found a teacher I can borrow enough of them from. Long term, I'm trying to decide which manipulatives to invest in; dice, checkers, snap cubes etc. for next year.  The problem is that I need bulk amounts for 18 kids and I want to buy something that offers the most possibilities for reuse. In the end I found a fun paper and pencil exercise: Criss Cross to try out.

But before I could start into the fun stuff we had to do introductions. I had everyone go around say their names, teachers and either why they had joined if they were new or their favorite part of math club if continuing. I also went over my rough charter points again: [Charter](https://drive.google.com/open?id=18NknKDOhmR5AX09RpLEFpli1IAL9F10W2UdVRT1i9VA).  The ones I tend to emphasize the most are respecting the classroom and each other, listening when others are working on the whiteboard and what to do if you get stuck. (Hint: its not about giving up)

The Criss-Cross game comes from the [http://minerva.msri.org/files/circleinabox.pdf](http://minerva.msri.org/files/circleinabox.pdf)  (See page 77) and involves investigating the [Euler Characteristic](https://en.wikipedia.org/wiki/Euler_characteristic).  To summarize the rules, you break everyone up into pairs (or triplets) and have the kids draw the 3 corners of a triangle plus some dots in the center. Then they take turns connecting two dots with a straight line (no intersections are allowed and only 1 segment can be added between 2 vertices) until all the open moves are used up. Whomever can draw a line last wins. I picked two kids to do a sample game on the whiteboard and then drew a chart up with vertices, 1st player wins, and 2nd player wins for the columns.  The kids split up and starting playing games and generating data. This was a lot of fun for the room. There was a constant stream of kids coming up to add some results to the whiteboard. However, as the games progressed I noticed our results were particularly inaccurate.  At first, I asked for more games for a particular size (say 6 dots) to compensate for the mistakes. But the errors were making it hard for anyone to spot the pattern about which player always wins.

So I called for a halt and said "I think I can see some mistakes in our data lets try again to redo our data chart as a group." This time I  picked two kids at a time and had them play on the whiteboard with the whole group counting and keeping track of mistakes and we started with 5 vertices and added one more each time.  The second attempt was the charm,  The data was consistent now (the 1st player wins if there is an odd number of vertices and the 2nd if its even)  So I was able to have them also count faces and edges after defining what they meant to look for more patterns.

Very quickly I had one boy notice that the number of faces rose by 2 each time, and the number of edges by 3. We were running out of time so I talked about V - E + F and we checked if the characteristic was constant for the game. I then had the kids try out a square on their own.  By this point all the parents had arrived so I plan to follow up and work on the basic idea about why this works next week in the beginning.

![]({{ site.baseurl }}/assets/img/329-euler-characteristic/blogger_90bceb93.png)

The proof is  recursive and fairly simple. Each new vertex must end up in a pre-existing triangle and

follows the 2nd case above adding 3 new edges and 2 new faces. If I repeat again I'll also remember how easy it is to make mistakes and do more work as a group.

For the problem of the week: I chose another @five_triangles problem: (This involves tiling again which is a good tie-in with some our previous problems)

![]({{ site.baseurl }}/assets/img/329-euler-characteristic/blogger_367366d5.jpg)