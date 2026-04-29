---
title: "Tilted Ellipse Problem Walkthrough"
date: 2020-09-27 21:25:00 +0000
tags:
  - conics
author: me
---

This problem from Matt Enlow is quite fun and as a bonus a chance to show off some
  geogebra formatting:

  The number of integer solutions (x,y) to x²+xy+y²=a (for some integer
      a>0) appears to always be a multiple of 6. What might explain this?

  First observation I made was that it was a tilted conic section and based on
  the coefficients the tilt was 45 degrees.  But which one?  You could
  easily test but I just like to graph things first:

  ![]({{ site.baseurl }}/assets/img/tilted-ellipse-problem-walkthrough/blogger_d45e4767.JPG)

As the picture and title of this post suggest, we're dealing with an ellipse. From here my first thought was to un-tilt the ellipse and take a look at the
  simpler version. But that also rotates all the lattice points too onto non integer coordinates and so it
  doesn't necessarily help.
![]({{ site.baseurl }}/assets/img/tilted-ellipse-problem-walkthrough/blogger_dbce1e63.JPG)
$ \dfrac{x^2}{2} + \dfrac{3 y^2}{2} = 3 $
I couldn't quite see a path with factoring that would work here.   I also started to notice a lot of symmetries
  in the ellipses.  For any given solution (a,b) there is at least 1 other solution pair (-a,-b) and potentially two other ones (b,a) and (-b,-a) if  a !=
  a.  That's a 4 four fold factor not a 3 fold one so I spent some time
  looking for why its not always true. Sadly, there isn't a 120 degree angle
  difference between lattice points like I was hoping for.
At this point I happened to see  response to Matt:

  
    Consider a grid of unit equilateral triangles. You get travel to any point
    on the grid by moving x units right/left, and y units Southeast/Northwest
    (x=0 and y=-1 corresponds to a move by "omega" in the diagram here.) The
    distance to (x,y) is x^2+xy+y^2. Now use symmetry.
    [pic.twitter.com/cuXDvZBz0h](https://t.co/cuXDvZBz0h)
  
  — Marty Weissman (@marty__weissman)
  [September 21, 2020](https://twitter.com/marty__weissman/status/1308105000199938048?ref_src=twsrc%5Etfw)

  This mapping onto the [Eisenstein integers](https://en.wikipedia.org/wiki/Eisenstein_integer) is quite clever but I still thought there was some else directly embedded
  in the ellipse. At this point I brought the problem to the MathJam I host and
  as a group after studying it for a while we came up with a partial
  breakthrough that I will expand below to a full explanation.

  ![]({{ site.baseurl }}/assets/img/tilted-ellipse-problem-walkthrough/blogger_9ea4da69.JPG)

First off the basic symmetry that always holds:

  If  (u,v) is a solution to \( x^2 + xy + y^2 = a\) then (-u,-v) is as
  well because: \(u^2 + uv = v^2 = (-u)^2 + (-u)(-v) + (-v)^2\). 
This means that the number of solutions is definitely an even number.

  ![]({{ site.baseurl }}/assets/img/tilted-ellipse-problem-walkthrough/blogger_662a3a31.JPG)

Secondly as show above any line either doesn't intersect the ellipse, is tangent to it or intersects it at 2 points. Its this final case we're most interested in.

  ![]({{ site.baseurl }}/assets/img/tilted-ellipse-problem-walkthrough/blogger_9db57b26.JPG)

Third, what's interesting and the key group observation that we made during the MathJam is that if (u,v) is an integer solution, if you draw a vertical or horizontal line so are the other intersections.  
This follows because if we fix one of the coordinates a monic quadratic equation is left where we already know one solution. 
$x^2 + bx  + b^2 = k    \rightarrow  x^2 + bx + b^2 - k = 0$   
This has two roots  a and something else. But  via the Vieta formulas the sum of the two roots is b so that means the other one is -a - b  also an integer.  This same logic can be repeated on the other axis.
- \(  (a,b)    \rightarrow a^2 + ab + b^2 \)- \( (a,-a - b)   \rightarrow a^2 + a(-a -b) + (-a -b)^2 = a^2 -a^2 -ab + a^2 + 2ab + b^2 = a^2 + ab + b^2 \)- \( (-a - b, b)   \rightarrow (-a -b)^2 + b(-a -b) + b^2 = a^2 + 2ab + b^2 -ab - b^2 + b^2 = a^2 + ab + b^2 \)

Slight complication![]({{ site.baseurl }}/assets/img/tilted-ellipse-problem-walkthrough/blogger_36a8d04f.JPG)

Everything works well if the initial point is normal and not on a vertical or horizontal tangent to the ellipse. If it is on the tangent then we need to make a slight adjustment and move over to its pair integer solution as the starting point. The corresponding pair will not be a tangent due to the tilt of the parabola. 

Finally putting everything together:

  ![]({{ site.baseurl }}/assets/img/tilted-ellipse-problem-walkthrough/blogger_c4b1d25b.JPG)

 

  