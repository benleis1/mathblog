---
title: "Cyclic Quad Area Problem"
date: 2022-02-05 20:49:00 -0800
tags:
  - cyclic quadrilateral
  - geometry
author: me
image:
  path: "{{ site.baseurl }}/assets/img/blogger_5f588c0e.png"
---

![]({{ site.baseurl }}/assets/img/blogger_5f588c0e.png)
 
 

 

 What follows is a walkthrough of the problem above which I had a lot of fun
 playing around with. Most of the solutions I saw online used trigonometry and
 so just to be different I'm going to approach this solely via scaled similar
 triangles relying on the cyclic quadrilateral.  Note: because the answer
 involves the golden ratio I was hoping to emphasize it more in the proof but
 so far I don't see a geometric avenue to bring that forward more
 prominently.  If you happen to find one please comment and tell me about
 it. Also I did spend a fair amount of time playing around with different which
 is condensed here into a straight forward narrative.
 

#### Basic Triangle

 
 ![]({{ site.baseurl }}/assets/img/blogger_5be2a701.png)
 
 
Because of the cycle quadrilateral ACBD and the fact that AC is is the
 diameter of the circle we have a series of similar right triangles in the
	figuring including $\triangle{BCE}$ and $\triangle{ADE}$.  I
 also above add a perpendicular segment  OH from the center of the
 circle which creates a third similar triangle $\triangle{OBH}$

 

 Letting r be the radius of the circle,  the length of BC and AB are
 $ r \sqrt{2} $.  With tat all established I am next going to setup
 the ratio of sides of our basic triangle as follows for convenience when
 doing everything that follows   (Stickler may object isn't this
 trig in disguise and in a sense it is but for the most part I find this
 elucidates things more clearly) 

 

 
 
 ![]({{ site.baseurl }}/assets/img/blogger_4783de1d.png)
 
 

 
 This setup means for BCE where the basic triangle is scaled up by $ r\sqrt{2}
 $ that  $ [\triangle{BCE}] = \frac{1}{2} BC \cdot BE = x \cdot r^2 $
 .  In addition using these scale factors on the triangle OBH since OB
 =  r  we find BH = $ \dfrac{xr}{y} $ and BD = $ \dfrac{2xr}{y} $
 and finally $ [BDFG] = \dfrac{4x^2r^2}{y^2} $    If we let A =
 [BCE] then  $ [BDFG] = 4 \cdot\dfrac{x}{y^2} A $

 

 
 ![]({{ site.baseurl }}/assets/img/blogger_21111997.png)
 
 

 At this point using this setup in order to solve the problem it seems likely
 we're going to need to find r, x and probably y as well but we have the
 Pythagorean relationship between x and y.  

#### Scaling from the Cyclic Quadrilateral part 1

 Let's start with original equality now: [BCE] + [ADE]  =  [BDFG]
 .  We already know formulas for two of those polygons and are just
 missing the third.   However, BCE and ADE are similar and we
 actually know enough to find their scale factor. We already found $ CE = y
 \cdot r \sqrt{2} $.  On the other side AE =  AB - BE  which
 becomes  $ AE = r \sqrt{2}  - x r \sqrt{2} =  (1-x) r\sqrt{2}
 $. Combining we find the second ratio  $ \dfrac{AE}{CE} =
 \dfrac{1-x}{y} $   In terms of area then 

$$  [ADE] = \dfrac{(1-x)^2}{y^2}  \cdot [BCE] $$ 

  Again in terms of  $ [BCE] = xr^2 = A $ we can recast $ [ADE] =
 \dfrac{(1-x)^2}{y^2} A $

 
 
 ![]({{ site.baseurl }}/assets/img/blogger_4bcab390.png)
 
 

 
 

 We're now set to look at the given equality [BCE] + [ADE]  = 
 [BDFG]  and plug our formulas in 

 $$  \dfrac{(1-x)^2}{y^2}  \cdot A + A = \dfrac{4x}{y^2}A $$ 

This one simplifies down quite a bit to a quadratic

 
 $$  (1-x)^2  + y^2 = 4x $$ $$  (1-x)^2  + (1 + x^2) = 4x
 $$
 

 $$  x^2 - 3x + 1 = 0  \rightarrow  x = \dfrac{3 \pm
 \sqrt{5}}{2}$$

 You could continue with these values but I'm going to recast in terms of the
 golden ratio which will turn out to be convenient so  $x  = 2 -
 \phi $  or   $ x = 1 + \phi $

Digression
Looking back at quadratic via the vieta formulas its apparent that the two roots multiply to 1. In other words  $2 - \phi $  and  $ 1 + \phi $ are reciprocals.$ 1 + \phi  = \phi^2$ via the basic golden ratio identity.  So as its reciprocal  $2 - \phi =  \dfrac{1}{\phi^2} $ 

 In either case we already know something else interesting $ x^2 + 1 =
 3x  \rightarrow  y^2 = 3x $ and we can remove y^2 from our previous
 diagram to get $ [BDFG] = \dfrac{4x}{3x} A = \dfrac{4}{3} A $

 Since ADE + BCE = BDFG that means we know ADE as well must be $ \dfrac{1}{3}A
 $

 
 ![]({{ site.baseurl }}/assets/img/blogger_a0e99b23.png)
 
 

 
#### Scaling from the Cyclic Quadrilateral part 2

 
 I'm now going to continue using the similar triangles within the cyclic
 quadrilateral to establish some additional ratios.  In particular I'll
 start with  $ \triangle{BDE} \sim \triangle{CAE} $   and
 the side length scale factor $ \dfrac{AC}{BD} = \dfrac{y}{x}  $ 
  Since we know the area of BDE is 1, based on the scale factor $ [CAE]
 = \dfrac{y^2}{x^2} $.  We can now use our substitution for y^2 and
 get  $ [CAE] = \dfrac{3x}{x^2} = \dfrac{3}{x}
 $.   
 
 

 
 We can then also note since ABC is a  right isosceles triangle: 
 $ [\triangle{ABC}] = r^2 $ and arrive at our second basic equation from
 [ABC] = [CAE] + [BCE]   $$ r^2 =  \dfrac{3}{x} + A  $$
 

$$ A = 3 + Ax $$ $$  A = \frac{3}{1-x} $$

 
 
 ![]({{ site.baseurl }}/assets/img/blogger_8846f040.png)
 
 

 

 This is a good opportunity to pin x down.  Since both sides of the
 equation above must be positive, 1 - x must also be positive and therefore we
 need to use the smaller of the two roots  $x  = 2 - \phi
 $  

 We're ready to put everything together now and substitute x and y into the
 equation above  

 $$ A = \dfrac{3}{1 - (2 - \phi)} $$

 $$ A = \dfrac{3}{\phi - 1}$$
 

 
 We can also apply a basic fact about the golden ratio here $ \phi^2 - \phi
 = 1  \rightarrow \phi(\phi -1) = 1 $ in other words $\phi$ and
 $\phi -1 $ are reciprocals. Which lets us jump to the answer  (I
 could have kept the original rational expression for x and done the same
 work but this is cleaner)
 
 

 
 $$ A  = 3 \phi $$  and the rest of areas scale from there 
 $[ADE] = \phi $ and $ [BDFG] = 4 \phi $  Now that we're at the end,
 it also turns out despite expectations we never needed to r^2 after all and
 barely found y!
 
 

 ![]({{ site.baseurl }}/assets/img/blogger_6320627b.png)
