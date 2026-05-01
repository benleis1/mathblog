---
title: "Trigonometry Walk Through Three Ways"
date: 2019-05-03 23:09:00 +0000
tags:
  - digression
  - trigonometry
  - geometry
  - roots of unity
author: me
---

I saw the following trigonometry problem the other day and decided it would make another good walk through since it hits several themes I've been exploring.

- An example of trig formulas being used to solve a bigger problem. 
- Also usage of Vieta formulas in a similar fashion. [Intro Post]({% post_url 2018-08-08-vieta-formula-brainstorming %})
- Plus a tie in to the roots of unity. [Intro post]({% post_url 2018-08-20-roots-of-unity-and-cyclotomic-polynomials %})

Find S where:

[](https://www.codecogs.com/eqnedit.php?latex=S%20%20%3D%20%5Csec%7B%5Cfrac%7B%5Cpi%7D%7B7%7D%7D%20-%20%5Csec%7B%5Cfrac%7B2%5Cpi%7D%7B7%7D%7D%20%2B%20%5Csec%7B%5Cfrac%7B3%5Cpi%7D%7B7%7D%7D%20-%20%5Csec%7B%5Cfrac%7B4%5Cpi%7D%7B7%7D%7D%20%20%20%2B%20%5Csec%7B%5Cfrac%7B5%5Cpi%7D%7B7%7D%7D%20%20%20-%20%5Csec%7B%5Cfrac%7B6%5Cpi%7D%7B7%7D%7D%20%0)  

[@_eylem_99]

![]({{ site.baseurl }}/assets/img/trigonometry-walk-through-three-ways/blogger_89882bb0.PNG)

First some basic observations about the values in the expression..  These evenly spaced coordinates immediately suggest thinking about roots of unity. At first glance they are all values from the 14th root.  But we can use two symmetries:

- **Vertical: **\( \cos{(2 \pi \cdot \dfrac{n}{7}) }=  \cos{(2 \pi \cdot \dfrac{7 -n}{7}) }   \)
- **Horizontal: ****: **\( \cos{( \pi \cdot \dfrac{n}{7})} =  - \cos{ ( \pi \cdot \dfrac{7 - n}{7}) } \)

And change expressions like \( \sec{( \dfrac{ \pi }{7} }) \) to  \( -\sec{( \dfrac{ 6 \pi }{7} }) \)  That gives use the following equivalent expression all in terms of the 7th unity roots:

$$S=-\sec{( \dfrac{ 2 \pi }{7})} -\sec{( \dfrac{ 4 \pi }{7})} -\sec{( \dfrac{ 6 \pi }{7})} -\sec{( \dfrac{ 8 \pi }{7})} -\sec{( \dfrac{ 10 \pi }{7})} -\sec{( \dfrac{ 12 \pi }{7})}  $$

Secondly this is all generally easier to  deal with in terms of cosines rather than secants and the basic fraction equivalence: \(  \dfrac{1}{a} + \dfrac{1}{b} = \dfrac{a + b}{a \cdot b} \) means if we find the various sums and products of the cosines we can also generate the desired secants as well.

**First Strategy: Find a Characteristic Polynomial**

We have an expression including all the primitive roots other than cos(0). By definition they are all solutions to  \( \omega^7 = 1 \)  So  setting \( \omega = \cos{x} + i \sin{x} \),  we can  take  [De Moivre's Formula](https://en.wikipedia.org/wiki/De_Moivre%27s_formula) and expand the left hand side to:  \( (\cos{x} + i \sin{x})^7 = 1 \).    After consulting pascal's triangle for the 7th level and a fair amount of simplification separating the real and imaginary parts of the expression we get: $$64\cos^7(x)-112\cos^5(x)+56\cos^3(x)-7\cos(x) = 1$$

That  has 7 roots, the 6 primitive roots we want and 0. So now's a good time to remove the unused root cos(0) = 1  from the polynomial by dividing by x - 1 to find:

$$ 64x^6 - 64x^5 - 48x^4 - 48x^3 + 8x^2 - 8x + 1$$

At this point we can use the Vieta formulas to find the product of all the roots is -1/64 (from the last coefficient) and the sum of all the combinations (6 choose 5) of the roots is 1/8 (from the 2nd to last coefficient) So our desired  expression

 \( S = - \dfrac{ ( \cos(\dfrac{2 \pi}{7})\cos(\dfrac{4 \pi}{7})\cos(\dfrac{6 \pi}{7})\cos(\dfrac{8 \pi}{7})\cos(\dfrac{10 \pi}{7}) + .... + ( \cos(\dfrac{4 \pi}{7})\cos(\dfrac{6 \pi}{7})\cos(\dfrac{8 \pi}{10})\cos(\dfrac{12 \pi}{7}) )}{  \cos(\dfrac{2 \pi}{7})\cos(\dfrac{4 \pi}{7})\cos(\dfrac{6 \pi}{7})\cos(\dfrac{8 \pi}{7})\cos(\dfrac{10 \pi}{7})\cos(\dfrac{12 \pi}{7})} = -\dfrac{\frac{1}{8}}{-\frac{1}{64}} = 8 \)

**Second Strategy:  Finding lower power expressions**

The strategy above works fine and is fairly general but does involve some painful polynomial expansions to the 7th power.  We can use another general trigonometric identity to short circuit some of this work.

Returning to our vertical symmetry:  \( \cos{(2 \pi \cdot \dfrac{n}{7}) }=  \cos{(2 \pi \cdot \dfrac{7 -n}{7}) } \) We can also think of it in terms of  multiplying the first root \( \dfrac{ 2 \pi }{7} \)  by any two numbers that add up to 7 and taking the cosine. At which point we'll get the same value.  But we can also breakup any of the other bigger primitive roots into sums of the first root so this equivalence will generally hold.  I..e  in this example cos(x) = cos(6x), cos(2x) = cos(5x) and cos(3x) = cos(4x) for all the primitive roots.  

More formally:

\( \cos(\dfrac{2 \pi n}{p}) - \cos (\dfrac{2 \pi(p -n)}{p}) = 2\sin(2 \pi) \cdot \sin(\dfrac{2 \pi(p -2n)}{p}) \)

  \( \cos(\dfrac{2 \pi n}{p}) - \cos (\dfrac{2 \pi(p -n)}{p})  = 0 \cdot \sin(\dfrac({2 \pi(p -2n)}{p}) = 0 \)

\(  \rightarrow   \cos(\dfrac{2 \pi n}{p}) =  \cos (\dfrac{2 \pi(p -n)}{p}) \)

The last equation we derived cos 3x = cos 4x  is the simplest and only will involve 4th degree terms so let's use it rather than the other ones.

[**Note:  a derivation of cos(3x) via De Moivre's theorem again**

** **\(e^{ix}=\cos x+i\sin x\Rightarrow e^{3ix}=(\cos x+i\sin x)^3\Rightarrow\cos 3x+i\sin 3x=(\cos x+i\sin x)^3 \) ]

\( \cos{(3x)} = 4\cos^3{x} - 3\cos{x} \)

\( \cos{(4x)} = \cos{(2 \cdot 2x)} = 2\cos^2(2x) - 1 = 2 \cdot (2\cos^2{x} - 1)^2 - 1 = 8\cos^4{x} - 8\cos^2{x} + 1\)

\( 4\cos^3{x} - 3\cos{x}  = 8\cos^2{x} - 8\cos{x} + 1 \rightarrow 8x^4- 4x^3 - 8x^2 + 3x  +1  \)

This polynomial again includes the root cos(0) = 1 i.e. x - 1 which we can divide out to get: \( 8x^3 + 4x^2 - 4x -1 \) 

Interestingly, this result is a little bit simpler to derive than before but clearly only has 3 solutions rather than all 6 primitive roots. What's happened? Remember via the vertical symmetry that 3 of the roots are identical to each other. The first characteristic equation included all 6, this one includes only the unique 3. Not too surprisingly if you square it you will end up with the same degree 6 equation we had before.  So from here once again we can apply the Vieta formulas for the 3 roots and then just multiply by 2.  This works out to \( -2 \cdot \dfrac{-\frac{1}{2}}{\frac{1}{8}}  = 8 \)

Also interesting as a followup: if you use one of the other base equations i.e. cox(x) = cos(6x) or cos(2x)=cos(5x) you are going to end up with higher degree equations and more roots. What extra roots are going to appear?

![]({{ site.baseurl }}/assets/img/trigonometry-walk-through-three-ways/blogger_36c3b83b.PNG)

Here's the comparison of the cos 2x = cos 5x  polynomial vs cos 3x = cos 4x.   All the unique primitive roots appear in both but the 5th degree equation has an extra root at 1/2. **See: [Next Post]({% post_url 2019-05-07-roots-of-unity-pursuing-extra-roots %}) for a deeper dive into this.]**

**Third Strategy: Leverage more of  the primitive roots**

First lets take direct advantage of what we just noticed about the duplicate roots and simplify S to $$S=-2(\sec{( \dfrac{ 2 \pi }{7})} + \sec{( \dfrac{ 4 \pi }{7})} + \sec{( \dfrac{ 6 \pi }{7})})   $$

We actually know a lot of the Vieta values we calculated above directly from the primitive roots: In particular:

- \( \cos{(\dfrac{ 2 \pi }{7})}  \cdot \cos{(\dfrac{ 4 \pi }{7})} \cdot  \cos{(\dfrac{ 6 \pi }{7})} = \dfrac{1}{8}  \)     - multiple the expression by  \( \dfrac{\sin{(\dfrac{ 2 \pi }{7})}}{\sin{(\dfrac{ 2 \pi }{7})}}  \) apply the double sine angle rule 3 times and 1/8 pops out. 

- \( \cos{(\dfrac{ 2 \pi }{7})}  +\cos{(\dfrac{ 4 \pi }{7})} + \cos{(\dfrac{ 6 \pi }{7})} = - \dfrac{1}{2}  \)    See: [roots-of-unity-and-cyclotomic-polynomials]({% post_url 2018-08-20-roots-of-unity-and-cyclotomic-polynomials %}#addition)

So first multiple our expression by the first identity to kill the fractions and we get: $$\frac{1}{8}S=-2(\cos{( \dfrac{ 2 \pi }{7})}\cos{( \dfrac{ 4 \pi }{7})}  + \cos{( \dfrac{ 4 \pi }{7})}\cos{( \dfrac{ 6 \pi }{7})}  + \cos{( \dfrac{ 2 \pi }{7})} \cos{( \dfrac{ 6 \pi }{7})})   $$

Next apply the cosine product rule to get: $$\frac{1}{8}S=-2\cdot \frac{1}{2}(\cos{( \dfrac{ 2 \pi }{7})} + \cos{( \dfrac{ 6 \pi }{7})}  + \cos{( \dfrac{ 2 \pi }{7})} + \cos{( \dfrac{ 10 \pi }{7})}  + \cos{( \dfrac{ 4 \pi }{7})} + \cos{( \dfrac{ 6 \pi }{7})})   $$ 

Simplify and substitute our second identity in:  Note : \( \cos{(\dfrac{ 10 \pi }{7})} = \cos{( \dfrac{ 4 \pi }{7} })  \)

 $$\frac{1}{8}S=- 2(\cos{( \dfrac{ 2 \pi }{7})} + \cos{( \dfrac{ 4 \pi }{7})}  + \cos{( \dfrac{ 6 \pi }{7})})  =  -2( -\frac{1}{2})  ==>   S = 8 $$

