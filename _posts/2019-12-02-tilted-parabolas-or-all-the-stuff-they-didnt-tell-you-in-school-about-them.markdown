---
title: "Tilted Parabolas  (Or all the stuff they didn't tell you in school about them) "
date: 2019-12-02 16:35:00 +0000
tags:
  - conics
  - tilted parabola
  - algebra
  - parabola
author: me
---

"A rose by any other name would smell as sweet"  W. Shakespeare

I'm returning to parabolas, the subject of much of high school Algebra. As I remarked last time: [Post on Parabola Coordinates](https://blog.mathoffthegrid.com/2018/08/parabola-coordinates.html), quadratic equations are so familiar and mainstream its always shocking to realize there is another layer of detail below the surface.

In this case: I was looking at a problem:  ***Find an equation whose graph is a parabola with a vertex (1,1) and a focus (2,2).***   After wondering why it was starred as a challenge problem. I realized this was a tilted parabola and the students had to solve this without using rotation.

![]({{ site.baseurl }}/assets/img/tilted-parabolas-or-all-the-stuff-they-didnt-tell-you-in-school-about-them/blogger_03b6b952.PNG)

In the past,  my go to approach would be to always transform (rotate) the points back to alignment with the x and y axes. Find the parabola through the transformed points and then rotate the equation back to get the answer in the general conic form of :

\( Ax^2 + Bxy + Cy^2 + Dx + Ey +F = 0 \)  (**Note: the xy term)**

**[Digression: its a useful exercise to prove to one's self this work even for curves not centered on the origin]**

However, I've never taken the time to think about the parabolas much and I still had several questions:

- How to determine the angle to rotate with trig functions if it wasn't as obvious as above.
- The relationship between the xy term in general parabolas and the tilt.

This time around since the problem was in a chapter on conics, I immediately reached for the definition of a parabola as the loci of point equidistant from the focus and directrix. And then something clicked.  In the past, this definition was useful when thinking about ray reflection and interesting to prove equivalent to the more standard forms but it never seemed necessary.  

![]({{ site.baseurl }}/assets/img/tilted-parabolas-or-all-the-stuff-they-didnt-tell-you-in-school-about-them/blogger_af2760f6.png)

But it really shines in cases like this.  **The conic definition is completely independent of how the parabola is oriented and thus more general than the other forms. **

When playing around with this idea and generating equations from a directrix line and focus point and then trying to backwards  I noticed some interesting simplifications always seemed to happen. This was exciting because they implied we could both reliably transform the general conic equation back into the directrix and focus form characterizing both its tilt and all its other characteristics and it wasn't too hard.

So without further ado and because I haven't found any online resources elsewhere on the subject I'm going to walk through how this works starting with derivation of the general directrix / focus form.

First we'll start with a Focus point  F = (a,b) and a Directrix line D:   y = mx + c.  Given an arbitrary point  P = (x,y) on the parabola we know the (square of the) distance from F is \( (x-a)^2 + (y-b)^2 \).  But what is the distance to D?

The key is the slope of the line: m.  The shortest segment from point P to D will have a slope of \( -\dfrac {1}{m} \)  So we take a point on D  (d, md + c), plug it into the slope equation and solve for d.

-  \( -\dfrac{1}{m} =   \dfrac{y - (md  +c)}{x -d} \)
- \( d = \dfrac{1}{m^2 + 1}(my - mc + x ) \)

Now we can setup the basic parabola equation:

- \( (x-a)^2 + (y - b)^2  = \left(x - \dfrac{1}{m^2 + 1} \cdot (my - mc + x ) \right)^2 + \left(y - \dfrac{m}{m^2 + 1} \cdot \left(my - mc + x \right) - c\right)^2 \) 

This looks like a mess but focusing on the right hand side after expansion there is a lot of simplification possible and we end up with:

- \( (x-a)^2 + (y - b)^2  =  \dfrac{1}{m^2 + 1} \cdot  \left(mx -y + c\right)^2 \) 

I really like how the two terms combined and we're left with an expression that's basically the original directrix D squared.   Moreover, we can expand everything and coalesce to see this form:

- \(  x^2 + 2mxy  +  m^2 \cdot y^2  -2((m^2 + 1) \cdot a  + mc)x   -2((m^2 + 1)b - c)y + (m^2 + 1)(a^2 + b^2) - c^2 = 0 \)

Here the first really useful result falls out:  **If you take the conic equation and scale it so that the Ax^2 terms is just x^2 then the coefficient of y^2 (C/A) is m^2 and the coefficient of xy (B/A) is 2m.  That means you can easily find the slope of the directrix and tilt of the whole parabola.     **

Conceptually this is really interesting since it implies for any given tilted parabola the coefficients A, B, and C are very tightly constrained. Alter one even a little bit and you're no longer a parabola.

![]({{ site.baseurl }}/assets/img/tilted-parabolas-or-all-the-stuff-they-didnt-tell-you-in-school-about-them/blogger_b6af74b9.PNG)

**coefficient B is a bit larger and we get an ellipse**

![]({{ site.baseurl }}/assets/img/tilted-parabolas-or-all-the-stuff-they-didnt-tell-you-in-school-about-them/blogger_d3701d7d.PNG)

**coefficient B is a bit smaller and we get a hyperbola.**

At first this is very curious. For a non tilted parabola you can adjust all the coefficients in the standard form and the parabola shifts around but is still the same shape.  But something very different happens in the conic form.

![]({{ site.baseurl }}/assets/img/tilted-parabolas-or-all-the-stuff-they-didnt-tell-you-in-school-about-them/blogger_df2fa74f.jpg)

The answer is in the generation of the curves. Parabolas only occur when the plane intersects the cones at an angle parallel to the side of the cone at the boundary between ellipses and hyperbolas.  Fiddling with the  A, B, C coefficients roughly corresponds to changing the tilt of the plane and moving out of the boundary zone towards either of the other conic forms. Fiddling with D, E, and F coefficients corresponds with shifting the parabolas location and scaling its size.

[**Note: the discriminant is normally used to determine the conic type: and in this notation \( b^2 = 4ac  \) is equivalent to  \( (2m)^2 = 4 \cdot 1 \cdot m^2 \) ]**

At this point you could go back to a rotational approach using the slope to directly generate the needed trigonometric ratios.  But we can actually fully unwind without using them.

By  looking at the corresponding terms in the conic equation and the expanded form above we derive a system of equations:

- \( -2((m^2 + 1) \cdot a  + mc) = D \)
- \( -2((m^2 + 1) \cdot b - c) = E \)
- \( (m^2 + 1)(a^2 + b^2) - c^2 = F \)

The key is the first two equations allow us to find expressions for a and b in terms of c which we can substitute into the 3rd one and then solve for all 3 variables.   Even nicer, while the equations look of degree 2, the square terms will cancel in all cases leaving only linear equations!   

While you can derive a general equation from this set, I don't think its easy to remember and practically speaking its probably easier to just solve the system each time.

**Example:**

![]({{ site.baseurl }}/assets/img/tilted-parabolas-or-all-the-stuff-they-didnt-tell-you-in-school-about-them/blogger_e04b54a3.PNG)

Let's take a standard conic  \(4x^2 - 4xy + y^2 - 16x -22y + 61 = 0 \)    and transform it back into Focus/Directrix Form.

- First we normalize the equation by dividing by 4 to get:   \(x^2 - xy + \frac{1}{4}y^2 - 4x -\frac{11}{2}y + \frac{61}{4} = 0 \)   
- This means our slope \( m =  -\frac{1}{2} \)  given the sign of the xy term. So we have the general tilt.
- Now we setup the new equation:  \( (x-a)^2 + (y-b)^2 = \dfrac{4}{5}(-\frac{1}{2}x - y + c)^2 =  \dfrac{1}{5}(x + 2y - 2c)^2  \)  
- To solve for a,b,c we multiply by 5 which gives us a form that will generate our original equation:    \( 5(x-a)^2 + 5(y-b)^2 =  (x + 2y - 2c)^2  \)  and we get the following system:

\( -10 a + 4c = -16 \)

\( -10 b + 8c = -22\)

\( 5(a^2 + b^2) - 4c^2 = 61 \)

- After isolating a and b and plugging into the 3rd equation

\( a  = \frac{1}{5}(8 + 2c) \)

\( b = \frac{1}{5}(11 + 4c) \)

\( 5 ( \frac{1}{25} ( 64 + 32c + 4c^2 + 121 + 88c + 16c^2) - 4c^2 = 61 \)

\( 185 + 120c + 20c^2 - 20c^2 = 305 \)

\(  120c  = 120 \)

- So c = 1, and plugging back in a = 2 and b = 3.

Finally our Directrix/Focus form is:  \( (x-2)^2 + (y - 3)^2 = \frac{4}{5}( -\frac{1}{2}x - y + 1)^2 \)

From here, we have enough info to completely characterize the parabola.

- Tilt is on a arctan(-1/2) angle.
- Focus is at (2,3)
- Directrix is y = -1/2 x + 1
- Axis of symmetry has a slope of 2 and goes through the focus
- Using that we can find the vertex which is halfway between the focus and directrix on the axis of symmetry
- Finally we can compute the distance from the focus to the vertex.

