---
title: "Roots of Unity and Cyclotomic Polynomials"
date: 2018-08-20 18:26:00 +0000
tags:
  - Cyclotomic polynomials
  - digression
  - algebra
  - roots of unity
author: me
---

Most of the treatments of this topic are fairly grounded in Abstract Algebra and
for this post I wanted to record my hopefully simpler conceptual framework.

  
## Motivation

<div class="boxed">
Factor:  $ x^6 - 1$
</div>

I don't remember when I first saw this  question but what was interesting about it was there were two paths.

  
If you broke it apart as a cube:  $ (x^2)^3 - 1  $ you'd get:

$x^6 - 1 = (x^2 - 1)(x^4 + x^2 + 1) = (x+1)(x-1)(x^4 + x^2 + 1) $

versus if you broke it apart as a square you'd get:

$x^6 - 1 = (x^3)^2 - 1 = (x^3 - 1)(x^3 + 1) = (x - 1)(x^2 + x + 1)(x + 1)(x^2- x + 1)$

  
  The second form was better but it wasn't clear to me at the time how you'd
  pick which way to go or the relationship between the two forms of
  factorization.  Although its more obvious now that the expressions
  are equal  $(x^2 - x + 1)(x^2 + x + 1) =  (x^4 + x^2 + 1) $ 

  

  There is some cool geometry underlying this factorization and all related
  forms $x^n - 1$ that ultimately leads to some deeper understanding of what's
  going on here.  First rewritten $x^n = 1$  its clear we're looking
  for the n roots of one or as its usually termed the roots of unity. 
  (There must be n of them due to the fundamental theory of algebra) 
   We can then graph the solutions on the complex plane and soon some
  patterns emerge

  
![]({{ site.baseurl }}/assets/img/roots-of-unity-and-cyclotomic-polynomials/blogger_1887dd32.PNG)
  
  $x = 1$

  Solution: $ (1,0) $

 ![]({{ site.baseurl }}/assets/img/roots-of-unity-and-cyclotomic-polynomials/blogger_4dc45bf4.PNG)
  
  $x^2 = 1$

  Solutions: $ (1,0), (-1,0) $

  
  ![]({{ site.baseurl }}/assets/img/roots-of-unity-and-cyclotomic-polynomials/blogger_93d4d322.PNG)
  
  

  

  $x^3 = 1$

  Solutions: $ (1,0), (-\frac{1}{2}, \frac{\sqrt{3}}{2}i), (-\frac{1}{2},
  \frac{-\sqrt{3}}{2}i) $

  

  
![]({{ site.baseurl }}/assets/img/roots-of-unity-and-cyclotomic-polynomials/blogger_0471f1be.PNG)
  
$x^4 = 1$

Solutions: $ (1,0), (0,i), (-1,0), (0,-i) $

  
## What's noticeable?

* 1 is always a root.
* There's a lot of symmetry going on: sometime in one and sometimes across 2 axes.
* Also although its not quite apparent yet, the **roots are evenly spaced.**
    
  
## De Moivre's Theorem
    
The reason for the symmetry and spacing comes directly from [De Moivre's Theorem](https://en.wikipedia.org/wiki/De_Moivre%27s_formula)
  
$(\cos(x) + i \sin(x))^n = \cos(nx) + i \sin(nx) $
  
    
Consider a unit circle with a circumference $ 2 \pi $ divided into n equal segments and a point at:  $0, 1 \cdot \frac{2 \pi}{n},  2 \cdot \frac{2 \pi}{n}, 3 \cdot \frac{2 \pi}{n} $ ... $ (n-2) \cdot \frac{2 \pi}{n} , (n-1) \cdot  \frac{2 \pi}{n} $

    
When you apply De Moivre's theorem to each of these elements raised to the nth power you get:

$ 1, \cos(2 \pi )  + i sin (2 \pi),   \cos(4 \pi )  + i sin
    (4 \pi) ... \cos((2n-1) \cdot 2 \pi )  + i sin ((2n - 1) \cdot2 \pi$

and since the trigonometric functions are cyclic with period $ 2 \pi $ these are all
equivalent and equal to 1.

    
In other words the n evenly spaced points around the circle that split it up also form the set of primitive roots of degree n.

Example: Without directly solving as we did earlier we can now see the 5th roots:

![]({{ site.baseurl }}/assets/img/roots-of-unity-and-cyclotomic-polynomials/blogger_3c9dd2ce.png)
    
    

Note: these are symmetrical reflected across the x-axis.

    

## The roots are all related
    
The second interesting fallout of De Moivre's Theorem is that the roots are all powers of each other. The simplest case is to look at them all in terms of the first root $ \omega = \frac{ 2 \pi} {n} $
    
    
So for example: $ \omega ^2 = \cos{2 \cdot  \frac{ 2 \pi} {n}} + i  \sin {2 \cdot  \frac{ 2 \pi} {n}} $ which is exactly the second root. This simple relation continues for all powers of n up to n-1.


Likewise, you can raise the other roots to various powers and keep moving around the circle i..e this is a closed group. Its often convenient to then think about the set of roots as $ \{ 1, \omega, \omega ^2 ...  \omega^{n-2}, \omega^{n-1} \} $

    
##   Addition Results

Intuitively we  can see from the graph above that in cases like n = 2 or n = 4 that the roots **appear evenly balanced and will add up to 0.**  Given this observation we can show this is generally the case even in the odd powers where its clear from the graph that the points balance each other vertically but its not as easy to see the horizontal case.

    
One way to visualize this fact is to just add the vectors that comprise roots up graphically and observe they all are the same length: 1 and involve identical rotations.  So they will in fact retrace the original n-gon with side lengths of 1 as they are added forming a cycle that returns back to the starting point.

![]({{ site.baseurl }}/assets/img/roots-of-unity-and-cyclotomic-polynomials/blogger_082400de.JPG)
    

Example: The circle with 7th roots of unity is in the lower part of the
    picture. Starting from point A or the trivial root of 1 I've added the vectors to
    other ones in green (B maps to H, C maps to I etc)  and reformed another heptagon.  One
    interesting and general result that's apparent from this is that apex of the
    heptagon is at x = 1/2.

    
We can also see this fact is true algebraically: Adding the roots we get a simple geometric series  $ 1 + \omega^2 .... + \omega^{n-1} = \sum_{i=0}^{n-1} \omega^i $.
    
Applying the sum of a geometric formula produces:

$ \sum_{i=0}^{n-1} \omega^i  =   \frac{ \omega^n  - 1}{\omega - 1} $

    
But $ \omega $ is an nth root of 1 so by definition $ \omega^n = 1 $ and so:

    
$ \sum_{i=0}^{n-1} \omega^i  =   \frac{ \omega^n  - 1} {\omega - 1} =  \frac{1 - 1}  {\omega - 1} = 0$

    
What's nice about this result is that we can even further break it apart on the complex plane and say that the cosines of the roots sum to 0 and the sines do the same. This allows the calculation of some interesting relations like on the last graph of the fifth roots:

    
$ \cos{0} + \cos{ 1 \cdot \frac{ 2 \pi}{5}} +  \cos{ 2 \cdot \frac{ 2\pi}{5}} +   \cos{ 3 \cdot \frac{ 2 \pi}{5}} +  \cos{ 4 \cdot \frac{ 2 \pi}{5}} = 0 $
    
$1 + \cos{ \frac{ 2 \pi}{5}} +  \cos{ 2 \cdot \frac{ 2 \pi}{5}} + \cos{ 3 \cdot \frac{ 2 \pi}{5}} + \cos{ 4 \cdot \frac{ 2\pi}{5}} = 0 $

    
And since from the symmetry $ \cos(n \cdot \frac{2 \pi}{5} ) = \cos( (5-n) \cdot \frac{ 2 \pi}{5}) $  we can consolidate a little further:

    
$ 1 +  2 \cdot \cos{ \frac{ 2 \pi}{5}} +  2\cdot  \cos{ 2\cdot \frac{ 2 \pi}{5}}  = 0 $

$ \cos{ \frac{ 2 \pi}{5}} +  \cos{ \frac{ 4 \pi}{5}}  = - \frac{1}{2} $

    
**Note:** This lines up exactly with how we noticed the apex of the traced n-gon  was at $ \frac{1}{2} $  back in the previous visualization.

    
For completeness we can also always show these types results via trigonometric identities.  Example  for the pentagon which we just computed above, multiplying by sin(pi/n) does the trick.

    
$$ \cos{ \frac{ 2 \pi}{5}} +  \cos{ \frac{ 4 \pi}{5}}  = x $$

$$ \sin{\frac{ \pi}{5}} \cdot  \left ( \cos{ \frac{ 2 \pi}{5}} +
     \cos{ \frac{ 4 \pi}{5}} \right ) =   \sin{\frac{ \pi}{5}}
    \cdot x $$

$$  \cos{ \frac{ 2 \pi}{5}} \cdot  \sin{\frac{
    \pi}{5}}  +  \cos{ \frac{ 4 \pi}{5}} \cdot  \sin{\frac{
    \pi}{5}}  =   \sin{\frac{ \pi}{5}} \cdot x $$

$$   \frac{1}{2} \left ( \sin{ \frac{ 3 \pi}{5}}  - 
    \sin{\frac{ \pi}{5}}  + \sin{ \pi} -  \sin{\frac{ 3 \pi}{5}}
    \right )  =   \sin{\frac{ \pi}{5}} \cdot x $$

$$   \frac{1}{2} \left ( - \sin{\frac{ \pi}{5}} \right ) 
    =   \sin{\frac{ \pi}{5}} \cdot x $$

$$ x = - \frac{1}{2}$$

    
However, while I'm glad there is consistency with the other approaches, this is my least favorite way to go because it obscures the structure.

## Multiplication Results

    
Since all the roots are powers of each other, its  clear
    that multiplying any of them together will just result in another one of the
    roots. (you may cycle around the circle a few times) This begs the parallel
    question to the previous section: what happens if you multiple all of them
    together?

    
![]({{ site.baseurl }}/assets/img/roots-of-unity-and-cyclotomic-polynomials/blogger_f0456bcf.PNG)
    
    
Example: multiply all the 4th roots of unity starting at (1,0) and ending at (-1, 0)

    
We can also apply the same line of reasoning to the multiplication of all the roots and see what falls out:

    
so $ \prod_{i=0}^{n-1}\omega^i = 1 \cdot \omega  \cdot \omega^2 ..... \omega^{n-2} \cdot \omega^{n-1} $

    
Consolidating the powers of  $ \omega$ we get  $\prod_{i=0}^{n-1}\omega^i  = \omega^{1 + 2 ... + (n -1)}$  The exponent in this case is a triangle number and using the formula for such sums $ \sum_{i=1}^{n} i   = \frac{n(n +1)}{2} $ We get  $ \prod_{i=0}^{n-1}\omega^i  = \omega^{\frac{(n-1) \cdot n}{2}}  =  ( \omega^n ) ^ {\frac{n - 1}{2}}$


But again $ \omega $ is an nth root of 1 so $ \omega^n  = 1 $ which means the whole product simplifies to $ 1^ {\frac{n - 1}{2}} = \sqrt{1} = \pm 1 $  Further its positive when n is odd and negative when n is even.

    
We can also generally break the roots apart like with addition to see what
    the product of the cos or sin of them are.   The general way to do this
    is just to expand the original equation $x^n  - 1 = 0$ by
    substituting in  $ \omega = \cos(x)  + i \sin(x) $ and then
    breaking out the real and imaginary parts, substituting $ \cos^2 = 1 -
    \sin^2 $ or vice versa and solving.  **Caution: **be careful
    to solve both parts since extra solutions may appear in either half that are
    not common to both.  Note: also regular trig multiplication to addition
    rules can usually also be applied to reduce these type problems back into
    the addition cases.

This is a nice parallel to addition. When you add all the roots you get 0, when you multiply them all you get
      $ \pm 1 $.


## Chords

We can also generalize some interesting results about chords from this conceptual starting point
    
![]({{ site.baseurl }}/assets/img/roots-of-unity-and-cyclotomic-polynomials/blogger_faf908ba.PNG)
    
For instance, the lengths of each of the chords in the picture are
    $|\omega^n - 1| $ for all the various roots. They all come in conjugate
    pairs so its intuitively evident if you multiply each of these pairs
    together you'll get a real result and therefore the total product is a real
    as well. But which one is it?

    
Some quick algebra on the roots gives us an answer:

$x^n - 1 = (x - 1)(x - \omega) .... (x - \omega^{n-1}) $

    
So $ \frac{x^n - 1}{x - 1} = (x - \omega) .... (x - \omega^{n-1})$

    
And the left hand simplifies to:

    
$1 + x + x^2 ... x^{n-1} = (x - \omega)(x - \omega^2) ... (x -
    \omega^{n-1}) $

    
Evaluating at x  = 1 we find   $ n =  (1 - \omega)(1 -
    \omega^2) ... (1 - \omega^{n-1}) $

Which is exactly the product of the chord lengths!
    
Whats especially nice is that due to symmetry this doesn't change if you use any other roots and draw all the chords from there.

    
(use the chord result to find a general formula for the products of sin)(https://planetmath.org/TrigonometricIdentityInvolvingProductOfSinesOfRootsOfUnity) 

## Cyclotomic Polynomials
  
Returning to our family of functions: $ x^n - 1 = 0 $  We can now look at the factoring problem more closely.
  
  
First we'll reuse the sum of a geometric series for n > 2 formula
  
$ \sum_{i=0}^{n-1} x^i  =   \frac{ x^n  - 1}  {x - 1} $

So we can always factor as following:
  
$ x^n  - 1 =  (x- 1)(1 + x + x^2 ...  + x^{n-1}) $
  
This reaffirms that 1 is always a root of any of these functions.  But
    when can we further factor? The graphs of the unit circle are again helpful
    in pointing out the solution:

![]({{ site.baseurl }}/assets/img/roots-of-unity-and-cyclotomic-polynomials/blogger_5af7147a.png)
    
    
Here we're looking at  roots of $x^6 - 1 $ the original problem at
    the top.  Because the roots are evenly spaced they are at  (1,0)
    and then 1/6, 2/6, 3/6, 4/6 and 5/6 of the way around the circle. But some
    of these fractions reduce. For example,  2/6 is also 1/3 or one of the
    roots of $ x^3 - 1 $ and 3/6 is also 1/2 one of the roots of $ x^2 - 1 $
     In other words, factoring the polynomial is tied to factoring the
    degree of the polynomial. In $x^n - 1$ if  degree n is not prime and
    can be factored $ p_1^{d_1} \cdot p_2^{d_2} \cdot ... p_k^{d_k} $  we
    can find all the primitive roots for its factors in the $x^n - 1$ itself.
        If we then multiply $(x - \omega_n) $ together for all the
    roots from a $p_k$ we'll get back the original polynomial $x^{p_k} -
    1$


This gives us an algorithm to factorize the polynomials of form $x^n -
    1$.

* First factorize the degree of the polynomial.  Since 1 is a common of root of all the polynomials involved divide all of them by x -1.
      
* Then divide the remainder $x^n - 1$ by $x^k - 1$ for all factors k. to accumulate sub polynomials.
      
      
* Combine all the polynomials found including x -1 back together to get the full factorization.
      
    
The irreducible polynomials that result in the end have a special name, **cyclotomic polynomials.  **As the model above suggests if the degree of the exponent n  for all n > 1 is  prime then $\frac{x^n - 1}{x -1}$  will be cyclotomic.
    
    
Example:  $ x^{21} - 1 $
    
1. 21 factors to $ 3 \cdot 7 $ 
2. So we have 3 subpolynomials:  x - 1, $x^3 - 1 , x^7 - 1$
3. Dividing x - 1 out of the latter two we get: $x^2 + x + 1,  x^6
      +x^5 + x^4 +x^3 + x^2 + x  + 1$
4. Dividing each of these in turn from  $x^{21} -1$ We are left
      with: $ x^{12} - x^{11} + x^9 - x^8 + x^6 - x^4 +  x^3 - x + 1 $
    
All together $ x^{21} - 1 = (x-1)(x^2 + x + 1)(x^6 +x^5 + x^4 +x^3 + x^2 + x  + 1)(x^{12} - x^{11} + x^9 - x^8 + x^6 - x^4 +  x^3 - x + 1)$
    
    
and in formal notation we call the final residual polynomial $\Phi_{21}$
      
### First Few Cyclotomic Polynomials
      
**TODO: flesh out**
    
    
To complete the model its only necessary to motivate why the cyclotomic
      polynomials cannot be reduced further.

      

The hand wavy  argument goes like this:  We've already removed
      every symmetric pair via factoring out the other cyclotomic polynomials
      and we're now left with the totient set.  If a set of these produced
      a smaller polynomial with integer coefficients it would have to have
      conjugate pairs to cancel out the complex parts of the roots. But those
      conjugate pairs would imply a symmetry that would imply another smaller
      factor existed that we didn't already find which is a contradiction since
      we fully factored already.

      

I don't fully have a good model here yet so here's a pointer to a standard
      approach: [https://brilliant.org/wiki/cyclotomic-polynomials/#proof-of-irreducibility](https://brilliant.org/wiki/cyclotomic-polynomials/#proof-of-irreducibility)

      

      

    
  

  
