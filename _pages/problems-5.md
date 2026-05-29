---
layout: single
title: Collected Problems 5
toc: true
author_profile: false
permalink: /problems-5/
---

<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js" type="text/javascript"></script>

<script>
  function showSoln() {
         var notes = $( '.notes')
         console.log("click # of notes: " + notes.length)
         notes.show()
  }
</script>

<style>
  .notes {
      display: none;
	  white-space: pre-wrap;
  }
</style>

I'm collecting various problems especially the short lived ones for future use. (Although for a variety of reasons I've lost a few of these sets.) My taste runs towards geometry as is probably evident. For ease of use I've hidden my notes. Click the button below to expose them.

<button id="btn" onclick="showSoln()">Show Notes/Solutions</button>

## Problem 1[*]

$ \tan{(\theta)} + \cot{(\theta)} = 2$

$ \text{What is the value of: } \tan^7{(\theta)} + \cot^7{(\theta)}$

[CBSE Exam]

<div class="notes">
1. This isn't really about trigonometry but it cleverly obfuscates that you're looking at a quadratic.
2. Some experimentation squaring both sides is also instructive.
</div>

## Problem 2[**]

$a^2 + b^2 + c^2  - ab - bc - c + \frac{3}{8} = 0$

Solve for a + b + c.

<div class="notes">
1. One possibility is to just directly start completing the square i.e. first \( a^2  -ab + \frac{1}{4}b^2 \)
etc. This works but is a bit messy.

2. The more natural way to complete the square is prettier but has some leftover values.

Demo: note I'll multiple by 2 first to avoid any fractions below.

$2a^2 + 2b^2 + 2c^2  - 2ab - 2bc - 2c + \frac{3}{4} = 0$
$a^2 + (a^2 - 2ab +  b^2)  + (b^2 -2bc + c^2)   +(c^2 - 2c + 1) - \frac{1}{4} = 0$
$(0-a)^2 + (a-b)^2  + (b-c)^2   +(c -1)^2 =  \frac{1}{4}$

So at first not quite useful: but look more closely at the left hand side. What it really is calculating is the *square of the distances* between **5** points 0, a, b, c, 1. Moreover the overall sum on the right hand side is shorter than total distance between 0 and 1.

All this raises the question how do we place 3 points between 0 and 1 to minimize the square of all the distances?

* For one point we can use the discriminant to minimize \(a^2 + (1-a)^2 \) and find its at the half way point.
* Through induction its not hard to extend this idea and see that the minimum always occurs when the points are evenly distributed. For n points they should be spaced at \( \frac {1}{n+1} \) intervals for the smallest overall sum.

And in this case what is the the minimal sum when the points are evenly distributed at 1/4 intervals?

$$ \sum_{n=1}^4 \left(\dfrac{1}{4}\right)^2 = 4 \cdot \dfrac{1}{16}  = \dfrac{1}{4} $$

So indeed the minimal configuration is the only one that satisfies this equation!
</div>

## Problem 3 [**]

A teacher wrote four positive numbers on the board and invited his students to calculate the product of any two. The students calculated only five of six products and these are the results: 2, 3, 4, 5, 6.

What is the last product?
What are the original four numbers?

[Source Unknown - Circulating on FB]

<div class="notes">
1. Think about the various parings and the one missing one.
2. What happens if you multiply the pairs together?
3. Once you've established the value of the last product this becomes a regular system of equations albeit one with more than 1 set of solutions.
</div>

## Problem 4 [**]

![]({{ site.baseurl }}/assets/img/problem-5/problem4.png)

[@matematika007]

<div class="notes">
1. AM-GM is the first thing to check for on problems like this.
2. The 3 on the right hand side suggests a three term sum on the left would be useful.
3. So substitute d = -a -b -c in both sides.
4. Once you simplify the algebra to the sum of 3 squares on the lhs, the basic AM-GM will produce the rhs.
</div>

## Problem 5[*]

![]({{ site.baseurl }}/assets/img/problem-5/problem5.jpg)

[@ShavingtonMaths]

<div class="notes">
1. Find the missing top left square.
2. Compare the right and left rectangles that are now formed. What do you notice?
</div>

## Problem 6 [**]

Let m and n be positive numbers such that \( \frac{m}{n} =  1+\frac{1}{2}+\frac{1}{3}+⋯+\frac{1}{101} \). Prove that m − n is a multiple of 103.

[user1312 on reddit]

<div class="notes">
1. Note: 101 + 2 = 100 +3 ... = 103.
2. Combine the rhs into a product of 103 and a series.
3. 103 is prime so it won't factor out of the denominator.
4. Move the extra 1 over to the lhs and combine.
</div>

## Problem 7 [*]

![]({{ site.baseurl }}/assets/img/problem-5/problem7.png)

[Patrick Honner]

<div class="notes">
3 different approaches:
* Extend BP and use the triangle inequality twice.
* Add AP and then use longest side is opposite the largest angle.
* Add a line from AB to AC that intersects P and use the triangle inequality 3 times.
</div>

## Problem 8 [**]

![]({{ site.baseurl }}/assets/img/problem-5/problem8.png)

[@illarosac]

<div class="notes">
* Think Stewart's Theorem.
* Add the radii in.
</div>


## Problem 13[**]

![]({{ site.baseurl }}/assets/img/problem-5/problem13.jpg)

[Matt Enlow]

<div class="notes">
1. See posts on piled squares.
</div>


## Problem 16 [**]

![]({{ site.baseurl }}/assets/img/problem-5/problem16.jpg)

* CD = DE and AC = 2CD.
* AF = 2DF
* Prove EF = CE

<div class="notes">
1. The key is finding the angle bisector.
</div>

[@MrHonner]

## Problem 17 [**]

An inconceivably large number of pixels sit in a square. Half of them are given the label 1. A quarter of them the label 4. An eighth of them the label 9. A sixteenth of them the label 16. And so on. What is the average label value of the pixels in the square?

![]({{ site.baseurl }}/assets/img/problem-5/problem17.png)

[James Tanton]


## Problem 19 [**]

![]({{ site.baseurl }}/assets/img/problem-5/problem19.jpg)

[@ZwS1BtHP0XpwirW]

<div class="notes">
1. Extension on the fact that all 4 triangles on the left hand side have the same area.
2. You can find the intersection of the of the 3 squares sides within the red triangle and its just the 3 colored triangles again.
3. Alternatively imaging the 3 triangles squeezing together until the squares and center triangle disappear in the limit.
</div>

## Problem 20 **

![]({{ site.baseurl }}/assets/img/problem-5/problem20.jpg)

Based on a problem from [@ahmetcet_n]

<div class="notes">
The hardest part here is that there are a ton of similar triangles and finding the useful pieces from that.
1. Extend AD and you get an angle bisector.
2. Its useful but not necc. to just set AC = BC to 1.
3. Look for the simplest expressions for pieces of BC.
</div>

## Problem 21 [*]

Graphs of f(x) = a - x², g(x) = x²+bx+c are tangent at x=1. What condition on 'a' is necessary for the graph of g to have 2 distinct x-intercepts?

[David Marain]

<div class="notes">
1. Think geometrically:

![]({{ site.baseurl }}/assets/img/problem-5/problem21-note.png)
</div>

## Problem 22 [**]

![]({{ site.baseurl }}/assets/img/problem-5/problem22.jpg)

[@ZwS1BtHP0XpwirW]

<div class="notes">
1. Translate the upper triangle over to the right side and the result is congruent to the interior one.
2. Generate a quadratic equation in terms of x then for the blue triangle.
</div>

## Problem 23 [*]

Prove that if quadratic equation \(ax^2 + bx + c\) has all odd integer coefficients, none of the roots are rational.

[Tim Chadwick - USSR Olympiad Problem Book]

<div class="notes">
Think about parity.
</div>

## Problem 24 [*]

![]({{ site.baseurl }}/assets/img/problem-5/problem24.png)

[@dmarain]

## Problem 25 [**]

![]({{ site.baseurl }}/assets/img/problem-5/problem25.png)

<div class="notes">
1. Law of Sines 3x
</div>

## Parallelogram areas [***]

![]({{ site.baseurl }}/assets/img/problems/regional.webp )

ABCD is a paralellogram. Prove that if the areas of the red regions are equal, then the areas of the green regions are equal as well. 

* Note leverage the similar triangle in both directions and you'll find the golden ratio.


## Exponents Warmup [*]

Find all the solutions to the following equation
$$3^x \cdot 2^{\frac{x}{x+2}} = 6$$

## Number Theory [**]

Find all positive integers such that $x^4 - 38x^2 + 169$ is prime

<div class="notes">
* Factorize into the form $(x^2 +ax +b)(x^2 + cx + d)$
* One of the factors must be 1 for the whole expression to be prime.

</div>
