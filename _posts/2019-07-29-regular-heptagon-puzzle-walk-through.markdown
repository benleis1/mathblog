---
title: "Regular Heptagon puzzle walk through"
date: 2019-07-29 20:26:00 +0000
tags:
  - digression
  - trigonometry
  - geometry
  - roots of unity
author: me
---

There are too many wildly different an interesting ways to attack this problem to not document.

[@drkanbir]

Angle Sequences

Here: I immediately thought about the roots of unity given its a regular heptagon and after thinking about the angles decided to try something out with trig rather than my normal preference for Euclidean Geometry.   What I love about the roots of unity angles here is how:

- We can compute the sum and product of all the angles and they all have very neat answers.
- As you add and multiple the angles they all just cycle back to each other.

![]({{ site.baseurl }}/assets/img/regular-heptagon-puzzle-walk-through/blogger_ac508242.PNG)

- Either by area formulas or by the law of sines:  $  \frac{1}{2}bc \sin(\frac{\pi}{7})  =  \frac{1}{2}ac \sin (\frac{2 \pi}{7})  = \frac{1}{2}ab \sin (\frac{4 \pi}{7})  $
- Using the double angle formula: $  \frac{1}{2}bc \sin( \frac{\pi}{7})  =  \frac{1}{2}ac \sin( \frac{2 \pi}{7}) $   reduces to $ bc = 2 \cos(\dfrac{\pi}{7}) \cdot ac $
- Likewise:  $  \frac{1}{2}ac \sin( \frac{2 \pi}{7})  =  \frac{1}{2}ab \sin( \frac{4 \pi}{7}) $   reduces to $ ac = 2 \cos(\dfrac{2 \pi}{7}) \cdot ab $
- Combining: $bc - ac = 2 \left(\cos(\dfrac{\pi}{7}) \cdot ac -  \cos(\dfrac{2 \pi}{7} ) \cdot ab \right ) $
- Substitute in again for ac and we get:  $bc - ac = 2 \cdot ab \left (2 \cos(\dfrac{2\pi}{7}) \cos(\dfrac{\pi}{7}) -  \cos(\dfrac{2 \pi}{7} )  \right) $
- Convert the product to a sum:  $bc - ac = 2 \cdot ab \left (\cos(\dfrac{3\pi}{7}) +  \cos(\dfrac{\pi}{7}) -  \cos(\dfrac{2 \pi}{7} )  \right) $
- Then from the roots of unity for heptagons: 

        $  \cos(\dfrac{2 \pi}{7}) + \cos(\dfrac{4 \pi}{7})  + \cos(\dfrac{6 \pi}{7})  = -\frac{1}{2} $ 

           or   since $ \cos(x)  =  -\cos( \pi - x) $

       $  \cos(\dfrac{2 \pi}{7}) - \cos(\dfrac{3 \pi}{7})  - \cos(\dfrac{\pi}{7})  = -\frac{1}{2} $ 

- So  $bc - ac = 2 \cdot ab \cdot \frac{1}{2}  = ab $  
- Then we just rearrange:  $ bc = ab + ac  \rightarrow   \frac{1}{a} = \frac{1}{b} + \frac{1}{c} $

Variation:   in the first step I didn't eliminate all the common variables because I aimed to keep the segment products for the final steps but if you did you'd get: $ b = 2 \cos(\dfrac{\pi}{7}) \cdot a $    These ratios can always be worked on to reach the final result.

Treat the roots and segment lengths directly

[**TODO: this proof is broken - revise]**

Note: all the points of the heptagon are the various 7th roots of unity and in fact are multiples of each other.  So let's label the in terms of the first root  $ \omega $,  and directly calculate the side lengths and it should all still work.

![]({{ site.baseurl }}/assets/img/regular-heptagon-puzzle-walk-through/blogger_259d7dab.png)

- Note1:  $ \frac{1}{a} = \frac{1}{b} + \frac{1}{c} \rightarrow   bc = ab + ac  $
- Note2: We have to leverage the rotational symmetry a bit here. The length of the segments doesn't vary as you rotate the end vertices.  $ || \omega^n (\omega^m - \omega^p) || = ||\omega^m - \omega^p|| $   

So lets directly compare ab, ac, and bc:

- $ a =  \omega^3 - \omega^2\text{,  }b = \omega^2 - 1 \text{,  } c = \omega^3 - 1 $
- $ ab  =  || (\omega^3 - \omega^2)(\omega^2 - 1) || = ||\omega^2|| \cdot || \boldsymbol{(\omega-1)^2}|| \cdot ||\omega + 1||   =    ||(\boldsymbol{\omega-1)^2}|| \cdot ||\omega + 1|| $     (We remove the extra rotation factors)
-  $ ac  =  || (\omega^3 - \omega^2)(\omega^3 - 1) || = ||\omega^2|| \cdot ||(\boldsymbol{\omega-1)^2}|| \cdot ||\omega^2 + \omega + 1||   =    ||\boldsymbol{(\omega-1)^2}|| \cdot ||\omega^2 + \omega + 1|| $ 
-  $ bc  =  || (\boldsymbol{\omega^2 - 1})(\omega^3 - 1)|| = ||(\boldsymbol{\omega-1)^2}|| \cdot ||\omega^3 + 2 \omega^2 + 2 \omega + 1||  $ 

Since all 3 magnitudes are scaled by the same  $  ||(\omega-1)^2|| $. This boils down to is: $  ||\omega + 1|| +  ||\omega^2 + \omega + 1|| = ||\omega^3 + 2 \omega^2 + 2 \omega + 1|| $ ?

Also on first glance that may not look certain but remember we can rotate without changing the magnitude so we'll multiply $||\omega + 1||  =  || \omega|| \cdot ||\omega + 1||  = ||\omega^2 + \omega|| $

- $ bc  = || \boldsymbol{ (\omega-1)^2}|| \cdot ||\omega^3 + 2 \omega^2 + 2 \omega + 1||  = ||   \boldsymbol{ (\omega-1)^2 } ||  \cdot ||\omega^3 + \omega^2 + \omega + 1|| +  ||  \boldsymbol{ (\omega-1)^2} || \cdot || \omega^2 + \omega|| $
- Substituting in $||\omega + 1|| = ||\omega^2 + \omega||  $ we get: 

              $ bc  = ||  (\omega-1)^2||  \cdot ||\omega^3 + \omega^2 + \omega + 1|| +  ||(\omega-1)^2|| \cdot || \omega + 1||  = ac + ab $.

Euclidean 

![]({{ site.baseurl }}/assets/img/regular-heptagon-puzzle-walk-through/blogger_a916859e.png)

Of course there is an Euclidean approach to this and its remarkably simple too. Like above this relies on rotational symmetry we can add extra segments in that have the same lengths and form  a cyclic quad ABCD.  Then directly from Ptolemy 's Theorem: we arrive at:  bc = ab + bc.  

Eculidean 2

This idea is a wild one for me and not one I would have looked into but very cool nevertheless:

Transforming the relation one can put it in ratio form: $ \frac{1}{a} = \frac{1}{b} + \frac{1}{c} \rightarrow   bc = ab + ac  \rightarrow  \frac{b}{a} = \frac{b+c}{c} $  This suggests similar triangles and sure enough:

[@puzzlist]

Variant

![]({{ site.baseurl }}/assets/img/regular-heptagon-puzzle-walk-through/blogger_a4f2208b.png)

This is actually fairly closely related to the original problem:

- let AB = a,   AD =c, BD = b  and AX = d
- So this says  a + d = c vs. the original bc = a(b+c)
- We can fill some more lengths in   AX = DX = d and then BX = b - d
- Then noting $ \triangle{ABC} \simeq \triangle{AXD} $ we get $ \dfrac{a}{b} = \dfrac{d}{c} $ or $ a \cdot c  = b \cdot d $
- So we just add ab to both sides:  $ a \cdot c  + a \cdot b = b \cdot  (d + a) = b \cdot c $

