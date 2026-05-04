---
title: "Justifying complex number exponential notation i.e. Euler's Formula without Calculus"
date: 2021-01-15 04:28:00 +0000
tags:
  - eulers formula
  - trigonometry
  - complex numbers
author: me
---

## Background

I'm assuming that you are already familiar with polar coordinates and cis
	notation for complex numbers. If not look here: [Link](https://www.varsitytutors.com/hotmath/hotmath_help/topics/polar-form-of-a-complex-number)

We start with any complex number being represented in polar coordinates on the complex plane as:  $ r ( \cos(\theta) + i \sin(\theta)) $


![]({{ site.baseurl }}/assets/img/justifying-eulers-formula/polar.png )

## Looking at the basic properties

By directly evaluating the general expression above we can start off by showing the complex
numbers have the all same properties as an exponential function


- $ f(0) = 1 $
- $ f(x + y) = f(x) \cdot f(y) $
- $ f(x - y) = \dfrac{f(x)}{f(y)} $
- $ f(-x) = \dfrac{1}{f(x)} $
- $ f(x)^n = f(n\cdot x) $


That's very suggestive but what exponential expression is equivalent in this
case?  In fact Euler's Formula  says that $ r ( \cos(\theta) + i \sin(\theta)) = r \cdot e^{i \theta} $

Usually that's justified via Calculus and Taylor Series but its possible to
mostly ground with simpler techniques.

## Justification

Lets start by looking at how e is defined: $ \displaystyle{e =  \lim_{n \to -\infty} \left(1 + \dfrac{1}{n}\right)^n} $
 or conceptually the result of infinitely compounding a value. That's usually been introduced before in the context of interest or other proportional growth.


We'd also like to have an expression for $e^x $ so  we  raise
both sides to the xth power. Then on the right hand side via the binomial
theorem we get:

$ ( 1 + {x \choose 1} \cdot \frac{1}{n} + {x \choose 2} \cdot \frac{1}{n^2} ... )^n $


But as x goes to infinity all of the smaller powers of n drop off and we're
only left with the first two terms  giving us:

$  \displaystyle{e^x =  \lim_{n \to -\infty} \left(1 + \dfrac{x}{n}\right)^n} $


## Enter De Moivre's Theorem

So how to connect these two seemingly unrelated concepts?  We're going to start with De Moivre's Formula

$$ (\cos(nx) + i \sin(nx)) = ((\cos(x) + i \sin(x))^n $$


We'd like this to look similar in structure to the definition of e and the
normal cis notation so first step is to scale everything down:

$$ (\cos(x) + i \sin(x)) = \left((\cos(\dfrac{x}{n}) + i
      \sin(\dfrac{x}{n})\right)^n $$


**Now what happens as n heads towards infinity?**


 For the cosine value $\frac{x}{n}$  heads towards so 0 so in
this case $ \cos(\frac{x}{n}) \approx \cos(0) = 1 $.   Likewise as n
goes to infinity  $\frac{x}{n}$ is getting closer and closer to 0 and so is the sine
value:   $ \sin(\frac{x}{n}) \approx\ \sin(0) \approx \frac{x}{n} $


Combining things we get as $ \displaystyle{ \lim_{n \to -\infty}} (\cos(x) + i \sin(x)) \approx
    \left(1 + i \cdot \frac{x}{n} \right)^n $


We then look back and realize this is exactly the same as the definition for: $ e^{ix} $ !
