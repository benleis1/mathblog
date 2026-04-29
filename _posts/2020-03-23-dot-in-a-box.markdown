---
title: "Dot in a Box"
date: 2020-03-23 01:44:00 +0000
tags:
  - digression
  - herons formula
  - geometry
author: me
---

[@fleonsotelo]

I've seen several variants on this type of problem in the past. Another variant
came up a few days ago on twitter via Leon Sotelo. So I think it would be fun to
talk about some of  the general properties it has.

## Missing Diagonal

  If you're like me, you might start by wondering about the missing diagonal in
  the picture above. Can we figure out what its length is? The general answer is
  yes due to this invariant:

  

  

  
    ![]({{ site.baseurl }}/assets/img/dot-in-a-box/blogger_4dd0a6db.JPG)
  
  
  $$\mathbf{a^2 + c^2 = b^2 + d^2}$$

  

  
    ![]({{ site.baseurl }}/assets/img/dot-in-a-box/blogger_0fc77c93.JPG)
  
  

  First we'll add in  some perpendiculars through O in the middle and
  assuming the side length is s,

  we get the segment lengths above. Then we can just use the Pythagorean theorem
  and rearrange the terms:

  

  $$ b^2  +  d^2 = (x^2 + (s-y)^2)  + (y^2  + (s-x)^2) =
  (x^2 + y^2) + ((s-x)^2 + (s-y)^2) = a^2 + c^2$$

  

  So for example in the original problem  the missing diagonal is of length
  \( \sqrt{17 + 25 - 4} = \sqrt{38} \)

  

  ## Double the Area
  
    Next we're going to double the area of the square by taking all of our
    original triangles and rotating them around vertices as follows:
  
  
    

  
  
    ![]({{ site.baseurl }}/assets/img/dot-in-a-box/blogger_e264f31d.JPG)
  
  
  
    

  
  This has some interesting properties:  Due to all the complementary
  angles after rotation all the points on the outside ends up being collinear
  and we have a new quadrilateral with every side length double the side length
  of one of the original diagonals.

  
    ![]({{ site.baseurl }}/assets/img/dot-in-a-box/blogger_062447be.JPG)
  
  

  
  And in fact its easy to find half of the new quadrilaterals area  \(
  \triangle{OO'O''}\) and \( \triangle{OO'''O''''} \) are both right isosceles
  and have an area equal to \( a^2 + c^2 \)

  

  Also the other half  of the quadrilateral are two triangles of equal
  area.  This is easiest to see via trigonometry:

  
    
      Area of  \( \triangle{O'OO'''} = \frac{1}{2} \sqrt{2}a \cdot \sqrt{2}
      c \cdot \sin{(O'OO''')} \) 
    
    
      Area of  \( \triangle{O'O''O''''} = \frac{1}{2} \sqrt{2}a \cdot
      \sqrt{2}c \cdot \sin{(O''OO'''')} \) 
    
  
  
    But the two angles are supplementary and therefore their sine values are the
    same.
  
  
    

    Further B and D are midpoints so they each divide  the bigger triangles
    into two subtriangles of equal area i.e.   [O'OB] =  [O'''OB]
    = [O''OD] = [O''''OD].
  
  
    

  
  
    There are few different ways to go from here but the most straightforward is
    to use a modified form
  
  
    of  Heron's formula: (See [here](https://blog.mathoffthegrid.com/2019/09/herons-formula-vs-trigonometry.html) for a detailed dive on this) I'm going to process one of the single
    small triangles that is a quarter of the total.
  
  
    

  
  
    $$ [O'BO] = \frac{1}{4} \sqrt{4b^2d^2 - (c^2 -a^2)^2} $$  and [O'OO''']
    is twice this value or $$ \frac{1}{2} \sqrt{4b^2d^2 - (c^2 -a^2)^2}$$

    

    (Note: this is highly symmetrical so you can swap a,c for b,d.)

    

    Putting it all together: \( [ABCD] = \dfrac{1}{2}\left ( (a^2 + c^2) +
    \sqrt{4b^2d^2 - (c^2 -a^2)^2} \right) \)

    

    And returning to our original problem \(  [ABCD] = \dfrac{1}{2}\left (
    (4 + 38) + \sqrt{4 \cdot 35 \cdot 17 - ((38 - 4)^2} \right)  =  21
    + 2 \sqrt{34} \)
  
  
    

    ## Shortcut
    That was a general geometric approach. However it always pays to look at
    what happens with the specific instance of  this setup that you have.
    And in this case a nice simplification falls out after doing the
    rotation/translations:   One of the sub triangles is also a right
    triangle.

    

    
  
  
    

    ## But why not  use all Trigonometry?
  
  
    Like most problems this one is solvable multiple ways. An alternate approach
    is to take a look at the corner and solve via only trigonometry:
  
  
    

  
  
    For this we'll focus on a single  corner A  (you  could work
    out of the center but the algebra is messier):
  
  
    

  
  
    ![]({{ site.baseurl }}/assets/img/dot-in-a-box/blogger_31c20c11.JPG)
  
  Using the law of cosines:
  
    

  
  
    
      - for AOB:  \( a^2 + s^2 -2as \cos{\alpha} = d^2 \)
      - for AOD: \( a^2 + s^2 -2as \cos{(90 - \alpha)} = b^2 \)
    
    Solving for the trig functions:
  
  
    
      - \( \cos{\alpha} = \dfrac{a^2  + s^2 - d^2}{2as} \) 
      
        \( \cos{(90 - \alpha)} = \sin{ \alpha} = \dfrac{a^2  + s^2 -
        b^2}{2as} \) 
      
    
    
      We now can use the Pythagorean relationship sin^2 + cos^2  = 1 
      to get an equation:
    
  
  
    

  
  
    $$ (a^2  + s^2 - d^2)^2 + (a^2  + s^2 - b^2)^2 = 4a^2 s^2 $$
  
  
    

  
  After a messy expansion we get:
  
    

  
  
    $$2a^4 + 2s^4 + b^4 + d^4  - 2a^2 d^2  - 2s^2 d^2 - 2a^2 b^2 -
    2s^2 b^2 = 0$$
  
  
    

  
  
    That turns out to be a quadratic in terms of s^2 which is our desired area A
    or:
  
  
    

  
  
    $$2A^2 +  -2(b^2 + d^2)A  - 2a(b^2 +d^2) + 2a^4 + b^4 + d^4 = 0 $$
  
  
    

  
  You can solve this quadratic for A to arrive at:
  
    

  
  
    $$ A = \dfrac{ (b^2 + d^2) \pm \sqrt{ (b^2 + d^2)^2 - 2 \cdot (-2a(b^2 +
    d^2) + 2a^4 + b^4 + d^4)}} {2} $$
  
  
    

  
  
    And with some algebraic manipulation you can get this into the equivalent
    form from the first section. Having done it both ways I  think its a
    bit more difficult. The algebra is messy, you have to deal with 2 cases of
    the quadratic formula and it doesn't have the clear geometric model that we
    get from the first approach.    (But I'm relieved its
    consistent)  I'll have to think on this some more to see if this can be
    simplified.
  
  

  

  How about three circles?
  
    We can also think about this as 3 circle equations.  The mechanics will
    actually look fairly similar to the trigonometry just now done analytically.
  
  

  

  
    
      ![]({{ site.baseurl }}/assets/img/dot-in-a-box/blogger_1206f77d.PNG)
    
    

    

  
  

  
    Setup from above we setup 3 circle equations that intersect at the
    coordinate (x,y)
  
  

  $$ x^2 + y^2 = a^2$$
  
    $$ (x - s)^2 + y^2 = d^2   \rightarrow   s^2 - 2sx = d^2
    - a^2$$
  
  
    $$ x^2  + (y-s)^2 = b^2  \rightarrow s^2 - 2sy  = b^2 - a^2$$
  
  

  The later two equations can be added and subtracted to derive
  
$$ x - y = \frac{b^2  - d^2}{-2s}$$
  
    $$  x + y = \frac{b^2 + d^2 - 2a^2 - 2s^2}{-2s}  \rightarrow 
    x + y = \frac{c^2 - a^2- 2s^2}{-2s}   $$
  
This looks like a dead end at first since we want to get rid of x and y but we can go back to our first original equation and see that squaring things may help 
$$ (x - y)^2 = a^2 - 2xy = (\frac{b^2  - d^2}{-2s})^2$$$$  (x + y)^2 = a^2 + 2xy =  (\frac{c^2 - a^2- 2s^2}{-2s})^2   $$
Adding together yet again we get
$$ 2a^2 = \frac{(b^2  - d^2)^2 +(c^2 - a^2- 2s^2)^2}{4s^2} $$
This then becomes a quadratic in terms of just s^2 and constant terms:
$$ 4s^4 +  (-4c^2 - 4a^2) s^2 + \left ((b^2 - d^2)^2 + (c^2 - a^2)^2 \right) = 0  $$
Solving for s^2 with the quadratic equation will again lead to the same formula
  

  