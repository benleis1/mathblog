---
title: "15-75-90:  Attack of the Dodecagon"
date: 2019-04-26 20:52:00 +0000
tags:
  - 15-75-90
  - digression
  - geometry
author: me
---

!![](https://pbs.twimg.com/media/D5FTFrzWkAADGLI.png)

This latest problem is from @le_becachel . Given a regular 12 sided dodecagon: find the ratio of the area of the yellow square to the red polygon.

Because the dodecagon is made up of 12 75-75-30 triangles or alternatively 24 15-75-90's this one is really also a riff on what is the area of the 15-75-90 triangle.  That interested me since with the ratios of the 15-75-90 (See: [revisiting-the-15-75-90]({% post_url 2018-11-12-revisiting-the-15-75-90 %}) for the  last time these were discussed)  we can readily compute this value algebraically.

Note: all the  triangles above are easy to express in terms of the radius of the dodecagon which is also the hypotenuse of the 15-75-90, so I'm going to also express the area in terms of it.

To start: we have the ratios:   $1:2 - \sqrt{3}: 2 \sqrt{2 - \sqrt{3}} $ where the last is the hypotenuse. Letting r be that length we rescale to:

 $ \dfrac{r}{2 \sqrt{2 - \sqrt{3}} }:  \dfrac{r \cdot (2 - \sqrt{3})}{2 \sqrt{2 - \sqrt{3%} : r $

The area of the 15-75-90  triangle then equals:

 $ \frac{1}{2} \cdot b \cdot h = \dfrac{1}{2} \cdot  \dfrac{r}{2 \sqrt{2 - \sqrt{3}} } \cdot \dfrac{r \cdot (2 - \sqrt{3})}{2 \sqrt{2 - \sqrt{3%}  =  \dfrac{1}{2} \cdot  r^2  \cdot \dfrac{ 2 - \sqrt{3}}{4 \cdot ( 2 - \sqrt{3})} =  \frac{1}{8} r^2 $

This can also be seen geometrically by looking at the original construction used to derive the ratios:

![]({{ site.baseurl }}/assets/img/15-75-90-attack-of-the-dodecagon/blogger_74fdb935.png)

Dividing the square with an equilateral triangle we start off with two 75-75-30 triangles on the side and two 15-75-90 triangles on the bottom.  We just have to translate the 15-75-90's up to the top and we're left with 4 of the 75-75-30's each having a long side length which is the same as the square side length.  That means each of them is  $ \frac{1}{4}$ of the $ s^2 $ the square's area.  And if you divide them in half each 15-75-90 with a hypotenuse of length s must be $ \frac{1}{8} $ of $ s^2 $

Now moving back to the dodecagon which is made up of  12 of these 75-75-30 wedges

![]({{ site.baseurl }}/assets/img/15-75-90-attack-of-the-dodecagon/blogger_511ba21e.png)

After drawing in the center O of the dodecagon and angle chasing: we find the that side length of the square is also the radius of the dodecagon.    That means the entire dodecagon is made up of 12 75-75-30 wedges for a total area of $ 3 r^2 $ or visually 3 yellow squares.

The polygon  GHIJKL is made up of of 5 wedges - OGL.   But OGL is a 2 15-75-90 triangle with a hypotenuse each of length r.  In other words OGL has the same area a wedge and therefore GHIJKL has an area of 4 wedges which is exactly the same as the square!