---
title: "Simplifying a Proof"
date: 2015-04-08 19:04:00 +0000
tags:
  - geometry
  - brainstorming
author: me
---

I found this problem online yesterday (briefly) via a post on the [google+ k-12 education](https://plus.google.com/communities/106364254296651187923).  In the figure below 

- The blue $\bigtriangleup$ has an area of 5 
- The green $\bigtriangleup$ has an area of 3 
- The orange $\bigtriangleup$ has an area of 4

What is the area of $\bigtriangleup$  in the middle?  So I have a reasonable solution for the problem but I'm still trying to see if I can find a way to eliminate the quadratic equation  from the process.

![]({{ site.baseurl }}/assets/img/simplifying-a-proof/blogger_bc844aa8.JPG)

My solution

First add in some perpendicular lines and divide the big rectangle into 4 quadrants.

![]({{ site.baseurl }}/assets/img/simplifying-a-proof/blogger_0f437cb3.JPG)

Conveniently we know most of the quadrants areas from the  triangles.
![]({{ site.baseurl }}/assets/img/simplifying-a-proof/blogger_1b8296d6.JPG)

- The lower left rectangle has an area of 6 since its two green $\bigtriangleup$. 
- The upper rectangle has an area of 10 since its two blue $\bigtriangleup$. 
- The  right hand rectangle has an area of 8 since its two orangle $\bigtriangleup$.

Notice the last two boxes overlap in the upper right corner and I split that out into x. Now we have 2 sets of proportional rectangles going either horizontal or vertical. I'll just choose the vertical ones but you can go either way.

$\dfrac{10-x}{6} = \dfrac{x}{8-x}$ which once simplified produces the following quadratic:

$x^2 - 24x  + 80 = 0$ or $(x - 4)(x - 20) = 0$  We choose the first solution where x = 4 since the second produces negative areas in the other boxes.   
That means the entire rectangle has a size of  6 + 6 + 4 + 4 = 20 and  the requested area of the $\bigtriangleup$ =  Area of the big rectangle minus the 3 given triangles or  20 - ( 3 + 4 + 5) = 8.
GeneralityIf you were paying attention you may have noticed that while I drew a square above in all the pictures the problem did not specify whether the quadrilateral was a square or just a rectangle nor did the proof depend on that being the case.   In fact, its generally true if the rectangle is "wide" enough to draw the three starting triangles the overall size will be fixed.
![]({{ site.baseurl }}/assets/img/simplifying-a-proof/blogger_d1cc504c.JPG)
![]({{ site.baseurl }}/assets/img/simplifying-a-proof/blogger_5f5321f4.JPG)

Improvements?

The presence of the quadratic means I couldn't give this one to the kids but it seems like there should be  a refinement that lets me remove it. I thought about it a bit yesterday and couldn't come up with any simplifications. Jump in if you have any ideas.

  