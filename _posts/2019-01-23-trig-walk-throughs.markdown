---
title: "Trig Walk Throughs"
date: 2019-01-23 22:52:00 +0000
tags:
  - digression
  - trigonometry
author: me
---

I'm in the process of writing a bigger piece on the role of trig formulas but I was looking for an example of their use during a geometry proof and came to this one.  The initial trig that is used is fairly straightforward but takes advantage of the 10-20-40 ratios and the general use of double angle formulas plus roots of unity symmetry.

Example 1

**Part 1: **find expressions for side lengths.

- Triangle ABC:  Let BC = 1 then AC = \( \cos{40} \) and \( AB = \sin{40} \)

- Triangle ACE:   \( AE = \cos{40} \cdot \frac{\sin{10}}{\cos{10}} \)

- Triangle ADE:   \( AD = \cos{40} \cdot \frac{\sin{10}}{\cos{10}} \cdot \frac{\cos{20}}{\sin{20}} \)

- Combining in Triangle ABD:  (Note: symmetry between denominator and numerator)

$$ \tan{ADB} = \frac{AB}{AD} = \frac{\cos{10}\sin{20}\sin{40}}{\sin{10}\cos{20}\cos{40}}$$

**Part 2: **simplify the expression

- Note: since cos(90-x) = sin(x) and vice versa we can make the top a bit regular

$$ \tan{ADB} = \frac{\sin{20}\sin{40}\sin{80}}{\sin{10}\cos{20}\cos{40}}$$

-       If m is the  floor of n / 2

[](https://lh4.googleusercontent.com/PN1Dbu8cM8RPK_J8sHDp6VjiEUdOfaklcWyAHFmJoHZRG-9vIbGSg0jtBxF3dn9RKy0jtSXZHxulgkAZmwC8e7fwfyyt-cN7FtA6mJ7MEdCcoTB_tOYlNBi6eqVHbXjLC__O-aYm)
  

         Therefore \( (\sin{20}\cdot \sin{40} \cdot \sin{60} \cdot \sin{80})^2 = \frac{9}{2^8} \) and \( \sin{20}\cdot \sin{40} \cdot \sin{60} \cdot \sin{80} = \frac{3}{16} \)

- \( \sin{60} = \frac{\sqrt{3}}{2} \)  We combine to get the numerator is  \( \frac{\sqrt{3}}{8} \) 
For the denominator we multiple by \( \frac{\cos{10}}{\cos{10}} \) and apply the double sine angle formula 3 times to find it equals \( \frac{1}{8} \)

**Part 3: **Putting it all together

- Combining we get \( \tan{ADB} = \sqrt{3} \) This is the well know ratio for tan 60.      
- From there angle addition gets us that x + FEB + EBF  = 180 or x + 100 + 30 = 180 and x = 50.

****

Alternate:
\( \sin{x}\sin{(60-x)}\sin{(60+x)} = \sin{x}\cdot (\frac{\sqrt{3}}{2}\cos{x} - \frac{1}{2}\sin{x})(\frac{\sqrt{3}}{2}\cos{x} + \frac{1}{2}\sin{x}) \)

\( = \frac{1}{4}\sin{x}(3\cos^2{x} - \sin^2{x}) \)

\( = \frac{1}{4}(3 (1 - \sin^2{x})\sin{x} - \sin^3{x})  \)

\( = \frac{1}{4}\sin{x}(3 \sin{x} - 4\sin^3{x}) \)

\( = \frac{1}{4}\sin{3x} \)

And likewise \( \cos{x}\cos{(60-x)}\cos{(60+x)} = \frac{1}{4}\cos{3x} \)

If x = 20 we get the exact denominator and numerator of our expression above and can jump from

here to  \( \tan{ADB} = \frac{\sin{20}\sin{(60-20)}\sin{(60+20)}}{\cos{20}\cos{(60-20)}\cos{(60+20)}} = \tan{3\cdot 20} \)

Additional Link: [https://www.cut-the-knot.org/arithmetic/algebra/sin3x.shtml](https://www.cut-the-knot.org/arithmetic/algebra/sin3x.shtml) (a completely different approach to deriving above worth looking at)

Example 2

!![](https://pbs.twimg.com/media/DyP4-9zV4AYoKuY.jpg)

This is an example of a class of Algebra problems more easily attacked via a trigonometric substitution.  If you try to naively unwind  by squaring the sides enough to remove all the radicals  you'll end up with a not so easily solved degree 6 equation.   In particular, the \( \sqrt{1-x^2} \) makes things difficult but it also strongly suggests the fundamental unit circle relationship:  \( x^2 + y^2 = 1 \)  so \( y = \sqrt{1 - x^2} \) or in trig terms \( \sqrt{1 - \cos^2{\theta}} = \sin{\theta}  \)  

So let's go ahead and subsitute \( x = \cos(\theta) \)   which gets us:

$$  \sqrt{\frac{1 + 2\cos{\theta}\sin{\theta}}{2}}  + 2\cos^2{\theta} = 1 $$

Enter the trig identies:   We can replace the 2 sin cos term with the double sine angle formula and likewise the 2cos^1 - 1 term is reducible with the double cos angle formula.

$$  \sqrt{\frac{1 + \sin{2\theta}}{2}}  - cos{2\theta} = 0 $$

Squaring things now we arrive at:

\( \frac{1 + \sin{2\theta}}{2} = \cos^2{2\theta} \)
\( 1 + \sin{2\theta} = 2\cos^2{2\theta} \)
\( 1 + \sin{2\theta} = 2 - 2\sin^2{2\theta} \)
\( 2\sin^2{2\theta} + \sin{2\theta} - 1 = 0 \)

This is a quadratic equation which we can factor: \( (2\sin{2\theta} - 1)(\sin{2\theta} + 1) = 0 \)

First case:
\( \sin{2\theta} = \frac{1}{2} \) implying \( \theta = \frac{\pi}{12} \) or \( \frac{5 \pi}{12} \) 

So to find the cos value there's a refresher on the 15-75-90 ratios here:

[revisiting-the-15-75-90]({% post_url 2018-11-12-revisiting-the-15-75-90 %})

But that's not really necessary because we can run the double angle formulas in reverse

- \(\cos{2\theta} = \pm \frac{\sqrt{3}}{2} \)
- Then  \( \pm \frac{\sqrt{3}}{2}  = 2\cos^2{\theta} - 1 \) to get \(x = \cos{\theta} = \frac{\sqrt{2 \pm \sqrt{3%}{2} \)
- After rechecking the potential solutions in the original equation only \( \frac{\sqrt{2 -\sqrt{3%}{2} \) works.

Second case:
For the second easier quadratic root:   \( \sin{2\theta} = -1 \) implying \( \theta = \frac{3 \pi}{4} \) 
Therefore \( x = \cos{\frac{3\pi}{4}} = -\frac{\sqrt{2}}{2} \)

