---
title: "Unexpected Binomial Theorem Connection"
date: 2022-09-03 11:32:00 -0700
author: me
image:
  path: "{{ site.baseurl }}/assets/img/blogger_8b675d03.png"
---

![]({{ site.baseurl }}/assets/img/blogger_8b675d03.png)
 
 Source: @ElyemGercek

 I saw this post and immediately thought: "What an odd connection to Pascal's
 Triangle. What's going on?"

 Due to time constraints I didn't get a chance to look into this for several
 weeks and while its not quite as geometric as I hoped the connection is fairly
 natural.

 First just as in the triangle you need an initial row of values from which the
 relation will then generate all the rest of the rows.  In this case its
 the triangle with a single median.  [Stewart's Theorem](https://en.wikipedia.org/wiki/Stewart%27s_theorem)  is helpful here for finding the initial equation.  What's novel
 is while I've done this before I've never rearranged in this fashion.

 $ a^2 \cdot m  + c^2 \cdot m = 2m \cdot (m^2 + b^2) $

 $a^2 + c^2 = 2 \cdot (m^2 + b^2) $

 $ a^2 - 2b^2 + c^2 = 2m^2 $

 What then happens in each iteration is we split the triangle into two smaller
 versions which we can then find find an equation for using the previous
 step.  Note: how there are two inputs just like in Pascal's triangle.

For example:

 ![]({{ site.baseurl }}/assets/img/blogger_8b718289.PNG)

From the left hand triangle we get $a^2 - 2b^2 + c^2 = 2m^2$. Then we can do
the same on the right hand side:

 

 ![]({{ site.baseurl }}/assets/img/blogger_b60bce46.PNG)

 

 
 The right hand triangle gives us \(b^2 - 2c^2 + d^2 = 2m^2$.   
 Since both equations are equal to \(2m^2$ we can then form the following
 new equality:
 

 $a^2 - 2b^2 + c^2 = b^2 - 2c^2 + d^2 $

$ a^2 + -2b^2 - b^2 + c^2 + 2c^2 - d^2 = 0 $

 $ a^2 - 3b^2 + 3c^2 - d^2 = 0$

 
 

This same pattern can be now repeated each time we divide into a left and right hand triangle and use the previous result.  Each of these expressions are equal to 0 (after the first median triangle). We can then equate them and simplify.  Each time we get the same shifting of the variable over by one between the two triangles and so just like in pascal's triangle we're adding the adjacent terms to generate the next row.  
 

 
 

 
 
 ![]({{ site.baseurl }}/assets/img/blogger_6320627b.png)
