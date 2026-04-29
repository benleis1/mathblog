---
title: "Roots of Unity Application"
date: 2021-02-10 04:50:00 +0000
tags:
  - roots of unity
author: me
---

Show that \( \sin\left(\dfrac{\pi}{n}\right)  \cdot
  \sin\left(\dfrac{2\pi}{n}\right)  ... 
   \sin\left(\dfrac{(n-1)\pi}{n}\right)   = 
  \dfrac{n}{2^{n-1}} \)
One of my first thoughts on seeing a problem like this is this must involves roots of unity somehow.  From a geometric perspective we're
  asked to multiply the y coordinates of all the points on the unit circle in
  quadrants 1 and 2 as shown below: Each of these points is an 2nth root of unity
  i.e. satisfies the equation \(x^{2n} = 1 \)

  ![]({{ site.baseurl }}/assets/img/roots-of-unity-application/blogger_20859625.PNG)

  We know a lot about how to manipulate the complex roots but less about
  individual parts like the sin so first we're going to take advantage of the
  standard derivation for sine from the full root  letting \( \omega \) be
  any root (or point on the diagram above) and introducing its conjugate. 
   Note: geometrically the conjugates are just the reflections across the
  horizontal access.

  ![]({{ site.baseurl }}/assets/img/roots-of-unity-application/blogger_568bcec5.PNG)

$   \omega = \cos \theta + i \sin \theta $
$ \overline{\omega} = \cos \theta -  i \sin \theta $
$ \sin \theta = \dfrac{\omega - \overline{\omega}}{2i} $ 

  So now we have a translation for the original express in terms of the full
  roots and their conjugates. This is already nice because it starts to
  introduces powers of two which we want to see in the final expression. 
  But what's even more convenient is that in general we get magnitudes when we multiple conjugates  \( \omega \cdot
  \overline{\omega} = | \omega | \) and on the unit circle the magnitude is by
  definition 1.  So in fact for any point on the unit circle \(
  \overline{\omega} = \dfrac{1}{\omega} \)

  We also can use the standard notions of complex multiplication and De Moivre's
  theorem to translate any root \( \omega_n \) into \(\omega^n \) in terms of
  the first root.

Applying this to our expression above we get
$ \sin \theta = \dfrac{\omega ^2 -  1}{2i \cdot \omega} $ 
Now we're ready to put things together and apply these transforms to the original equation:

   $\sin\left(\dfrac{\pi}{n}\right)  \cdot
  \sin\left(\dfrac{2\pi}{n}\right)  ... 
   \sin\left(\dfrac{(n-1)\pi}{n}\right)   = 
   \dfrac{\omega ^2 -  1}{2i \cdot \omega}  \cdot 
  \dfrac{\omega ^4 -  1}{2i \cdot \omega^2} ...  \dfrac{\omega
  ^{2n-2} -  1}{2i \cdot \omega^{n-1}}  =  \dfrac{1}{(2i)^{n-1}}
  \cdot \dfrac{\omega ^2 -  1}{\omega}  \cdot  \dfrac{\omega ^4
  -  1}{\omega^2} ...  \dfrac{\omega ^{2n-2} - 
  1}{\omega^{n-1}} $

  This is already progress since the \(2^{n-1} \) has started to appear. Next
  lets examine the numerator:

  Conceptually rather than a product involving  half of the 2nth roots of
  unit what we now have is a product involving of all of the nth roots of unity
  except 1:

  ![]({{ site.baseurl }}/assets/img/roots-of-unity-application/blogger_f742a901.PNG)

And in fact the denominator is almost something familiar: see  [Chords and the roots of unity](https://blog.mathoffthegrid.com/2018/08/cylotomic-polynomials.html#chords)   the product of the chords. All that remains is to reverse the signs to completely get it into right form:$ \dfrac{1}{(2i)^{n-1}} \cdot \dfrac{\omega ^2 -  1}{\omega}  \cdot  \dfrac{\omega ^4 -  1}{\omega^2} ...  \dfrac{\omega ^{2n-2} -  1}{\omega^{n-1}} = \dfrac{-1^{n-1}}{(2i)^{n-1}} \cdot \dfrac{1 - \omega ^2 }{\omega}  \cdot  \dfrac{1 - \omega ^4 }{\omega^2} ...  \dfrac{1 - \omega ^{2n-2}}{\omega^{n-1}}   =  \dfrac{-1^{n-1}}{(2i)^{n-1}} \cdot n \cdot \dfrac{1}{\omega} \cdot \dfrac{1}{\omega^2} ... \dfrac{1}{\omega^{n-1}}  $We can then coalesce all the remaining denominators to:$ \dfrac{-1^{n-1} \cdot n}{(2i)^{n-1}} \cdot  \dfrac{1}{\omega^{\frac{n(n-1)}{2}}} $Next we turn our attention to i which is problematic since our goal is a real number but we're in luck since  i also can expressed in terms of \( \omega \).  i is \( \frac{\pi}{2}\) on the unit circle and   \(\omega \) is \( \frac{\pi}{n}  \)  so \( i = \omega^{\frac{n}{2}} \)   That means either $ i^{n-1} = \omega^{\frac{n(n-1)}{2}} $ or vice versa We have both forms in our expression which we'll collapse to$ \dfrac{-1^{n-1} \cdot n }{(2i)^{n-1}} \cdot  \dfrac{1}{\omega^{\frac{n(n-1)}{2}}} =  \dfrac{-1^{n-1} \cdot n }{(2i)^{n-1}} \cdot  \dfrac{1}{i^{n-1}}   =   \dfrac{-1^{n-1} \cdot n}{2^{n-1} \cdot (i^{n-1})^2}  $\( -1 = i^2 \) so  \( -1^{n-1} = (i^2)^{n-1}  = (i^{n-1})^2 \)   Or in other words the top and bottom terms cancel out to leave use with

  $ \dfrac{-1^{n-1} \cdot n}{2^{n-1} \cdot (i^{n-1})^2}  = \dfrac{n}{2^{n-1}} $And we're done!