---
title: "Dot Product Discovery"
date: 2018-11-17 21:32:00 +0000
tags:
  - vectors
  - digression
author: me
---

I was reading twitter yesterday and saw this tweet:

The idea of the last two screens was to figure out that there were lots of different ways to get a dot product of 4 (here's the overlay of from the last time that I ran this activity) [pic.twitter.com/fkFTo1epa1](https://t.co/fkFTo1epa1)
— Dan Anderson (@dandersod) [November 16, 2018](https://twitter.com/dandersod/status/1063489991844737024?ref_src=twsrc%5Etfw)

So the last slide that shows all the endpoints of vector v such that the dot product of v and u is 4 is composed of points that make a line perpendicular to u, which is pretty cool... I'm thinking about why that is.
— Anna Blinstein (@ablinstein) [November 16, 2018](https://twitter.com/ablinstein/status/1063522602822524928?ref_src=twsrc%5Etfw)

Normally I don't click through to many Desmos Activity Builder pages that people share so I would have missed this one.  I'm glad I didn't since in this case, it pointed out something I never had noticed about the dot product:    If one vector and the dot product itself are held constant, all the end points of the other vector form a perpendicular line.

![]({{ site.baseurl }}/assets/img/dot-product-discovery/blogger_af94ffa9.PNG)

To paraphrase Anna's explanation:

- Let \( u = (x_1,y_1) \) be one fixed vector and v the other vector that varies and let  \( \vec{u} \cdot  \vec{v} = k \) where k is constant.
- The slope of u is by defintion: \( \frac{y_1}{x_1} \)
-  \( \vec{u} \cdot  \vec{v} =  x \cdot x_1 + y \cdot y_1 = k \)  : This is a line with slope \( -\frac{x_1}{y_1} \)   Since the slopes are negative inverses this line and the original vector are indeed perpendicular.

Yes but why...

However, I usually find vectors and dot products more intuitive with the alternate definition:

 \(  \vec{u} \cdot \vec{v} = \|  u \|  \| v \| \cos {\theta} \)   So it clearly should also fall out from this definition: but how?

![]({{ site.baseurl }}/assets/img/dot-product-discovery/blogger_8794a7a0.png)

At first I thought this would come from the law of cosines:    i.e.    \(  \|  u \|^2  +  \| v \|^2 - 2 \|u \| \|v\| \cos {\theta}  =  \| \vec{u} - \vec{v} \|)^2  \)    But this didn't really lead me anywhere beyond tautologies.

Then I went back to basics:

To make things easier without loss of generality I  rotated everything so u lies on the x axis.   v now decomposes into 2 orthogonal vectors:

\( \| v \| \cos{\theta}\) and \( \| v \| \sin{\theta}\)

![]({{ site.baseurl }}/assets/img/dot-product-discovery/blogger_637546bc.PNG)

If the dot product is constant i..e  \( \vec{u} \cdot  \vec{v} =  k \)  and u is also fixed then we

get \( \|  u \|  \| v \| \cos {\theta}  =  k \) or  \( \| v \| \cos{\theta} =  \frac{k}{\|u \|} \)

Since both k and the magnitude of u are fixed, this horizontal component of  the vector v is also fixed and cannot vary.  The orthogonal piece, \( \| v \| \sin{\theta}\)  however can be of any length as you adjust either the angle or magnitude of v.  So you end up with a string of vectors all ending on a perpendicular!

