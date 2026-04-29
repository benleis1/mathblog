---
title: "More Heron's Formula Extensions"
date: 2020-11-23 01:10:00 +0000
tags:
  - herons formula
  - geometry
author: me
---

Continuing on the theme from the last post: [https://blog.mathoffthegrid.com/2020/11/going-one-step-beyond-herons-formula.html](https://blog.mathoffthegrid.com/2020/11/going-one-step-beyond-herons-formula.html)  here's another problem showing the power of the full conceptual
  framework.  Heron's formula itself even makes an appearance again at the end.

  ![]({{ site.baseurl }}/assets/img/more-herons-formula-extensions/blogger_7edc73a0.png)

Problem

  Given a \(\triangle{ABC} \) show that  \(
  \tan\left(\dfrac{a}{2}\right)\tan\left(\dfrac{b}{2}\right) +
  \tan\left(\dfrac{a}{2}\right)\tan\left(\dfrac{c}{2}\right) +
  \tan\left(\dfrac{b}{2}\right)\tan\left(\dfrac{c}{2}\right) = 1 \)

  Traditional ApproachThere are many ways to attack this problem using trig identities I'm going to demonstrate one that is very linear in the progression of ideas and that focus on a direct simplification of the left hand side.   To do that I'm going to take advantage of the triangle angles.- We know that a + b + c = 180 so   \( \dfrac{a}{2} + \dfrac{b}{2} + \dfrac{c}{2} = 90 \rightarrow  \dfrac{c}{2}  = 90 - \left( \dfrac{a}{2} + \dfrac{b}{2} \right)  \)
So first isolate  \( \dfrac{c}{2} \)
  \( \tan\left(\dfrac{a}{2}\right)\tan\left(\dfrac{b}{2}\right) + \tan\left(\dfrac{a}{2}\right)\tan\left(\dfrac{c}{2}\right) + \tan\left(\dfrac{b}{2}\right)\tan\left(\dfrac{c}{2}\right) = \)  \( \tan\left(\dfrac{a}{2}\right)\tan\left(\dfrac{b}{2}\right) + \tan\left(\dfrac{c}{2}\right) \cdot  \left( \tan\left(\dfrac{a}{2}\right) + \tan\left(\dfrac{b}{2}\right) \right)  \)
Now looking at \( \tan\left(\dfrac{c}{2}\right) \)  we already know that's \( \tan\left(\ 90 - \left( \dfrac{a}{2} + \dfrac{b}{2} \right ) \right)  \)
But  \(\tan(90-x) =  \dfrac{\sin(90 - x)}{\cos(90 -x)}  =  \dfrac{\cos x}{\sin{x}} = \cot{x}  \)
We can also now use tangent addition: \( \tan\left(\dfrac{a}{2} + \dfrac{b}{2}\right) = \dfrac{\tan\left(\dfrac{a}{2}\right) + \tan\left(\dfrac{b}{2}\right)} {1 - \tan\left(\dfrac{a}{2}\right) \cdot \tan\left(\dfrac{b}{2}\right)} \)
So together we get \( \tan\left(\dfrac{c}{2}\right)  = \dfrac{1 - \tan\left(\dfrac{a}{2}\right) \cdot \tan\left(\dfrac{b}{2}\right)} {\tan\left(\dfrac{a}{2}\right) + \tan\left(\dfrac{b}{2}\right)}  \)
Substituting into our equation we get:
  \(  \tan\left(\dfrac{a}{2}\right)\tan\left(\dfrac{b}{2}\right) +   \dfrac{1 - \tan\left(\dfrac{a}{2}\right) \cdot \tan\left(\dfrac{b}{2}\right)} {\tan\left(\dfrac{a}{2}\right) + \tan\left(\dfrac{b}{2}\right)}   \cdot  \left( \tan\left(\dfrac{a}{2}\right) + \tan\left(\dfrac{b}{2}\right) \right)  \)
That has a very convenient cancellation:
  \(  \tan\left(\dfrac{a}{2}\right)\tan\left(\dfrac{b}{2}\right) + 1 - \tan\left(\dfrac{a}{2}\right) \cdot \tan\left(\dfrac{b}{2}\right) =  1  \)

  
    Overall this is fairly neat but it needs a few identities and doesn't give
    any geometric notion about what's going on.
  
  

  Using Ratios Instead
  
    This time we're going to go back to the diagram and express the tangents as
    a ratio. In general \( \tan\left(\dfrac{a}{2}\right) = \dfrac{r}{s-a}
    \)  where r is the inradius and s is the semiperimeter. 
  
  

   So substituting in we get: 

  
    \( \tan\left(\dfrac{a}{2}\right) \tan\left(\dfrac{b}{2}\right) +
    \tan\left(\dfrac{a}{2}\right)\tan\left(\dfrac{c}{2}\right) +
    \tan\left(\dfrac{b}{2}\right)\tan\left(\dfrac{c}{2}\right)\)
  
  

  
    \(  = \dfrac{r^2}{(s-a)(s-b)} + \dfrac{r^2}{(s-a)(s-c)} +
    \dfrac{r^2}{(s-b)(s-c)} \)
  
  

  
     \( = \dfrac{r^2 \cdot ((s - a) + (s -b ) + (s -c))}{(s-a)(s-b)(s-c)}
    \)
  
  

  
     \( = \dfrac{r^2 \cdot s }{(s-a)(s-b)(s-c)} = \dfrac{r^2 \cdot s^2
    }{s(s-a)(s-b)(s-c)} \)
  
  

  
     But both the numerator and denominator are expressions for the area of
    the triangle: (semiperimeter \(\cdot\) inradius and heron's formula)
  
  

  So we get: \( \dfrac{[ABC]^2}{[ABC]^2} = 1 \)

  This way, for me at least, shows the symmetry of what's going on  is very direct and the intermediate expressions are all recognizable in a geometric sense.

  