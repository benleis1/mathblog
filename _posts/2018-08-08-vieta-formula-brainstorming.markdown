---
title: "Vieta Formula Brainstorming"
date: 2018-08-08 22:54:00 +0000
tags:
  - algebra
  - brainstorming
author: me
---

I've on and off thought a bit about [Vieta's Formulas](https://en.wikipedia.org/wiki/Vieta%27s_formulas) over the last few years.  The AoPS Algebra textbook introduces them and has a few beginner problems. They initially seemed both obvious and a bit contrived in their application. Then I learned about Vieta Jumping as a technique in the IMO and bit by bit various problems showed up where they were very useful indeed.  But a chance encounter with a paper by Ben Blum Smith @ [https://arxiv.org/pdf/1301.7116.pdf](https://arxiv.org/pdf/1301.7116.pdf) linking them to Galois Field Theory has me extremely interested in them now and I'm going through the brainstorming process here to see if I could build a day out of them. **This is definitely still a work in progress.**

Constraints:

- This could only be in the Spring after any students in Algebra have quadratics under their belt.
- How would I handle any pre-algebra students?
- How much complexity can we explore in 1 hour?

Math History:

[https://en.wikipedia.org/wiki/Fran%C3%A7ois_Vi%C3%A8te](https://en.wikipedia.org/wiki/Fran%C3%A7ois_Vi%C3%A8te)

What more can I find?

Quadratic Exposition:

[This is condensed from a twitter discussion with Ben]

![]({{ site.baseurl }}/assets/img/vieta-formula-brainstorming/blogger_fe97d6fe.png)

Graphically speaking the quadratic formula can be interpreted as there is a point equidistant

between the two roots (and incidentally aligned with the vertex).   That distance is

\( \frac{b^2 - 4ac}{2a} \)

We derive that by completing the square but using the Vieta formulas we get another interpretation.

For this discussion lets only consider monic quadratics where a  = 1 and let p and q be the 2 roots.

- c  = pq
- b = -(p + q)

So \(  \frac{b^2 - 4c}{2}  =  \frac{(-p -q)^2 - 4pq}{2} = \frac{(p-q)^2}{2}  \)

This means the discriminant is precisely the average of the square of the distance between the 2 roots!

Likewise \( \frac{-b}{2} = \frac{x + y}{2} \) or the average the 2 roots.

[Probably I would have the kids state the quadratic formula and then try to label the graph first and then ask "yes but why?"]

Unsolved tangent: The vertex in terms of  p and q is  \(- (\frac{p-q}{2})^2 \).  How does that fit in geometrically speaking?

Entry Problems:

- What is \( \frac{1}{x} + \frac{1}{y} \)  if you only know \(xy = k_1 \) and \(x + y = k_2 \)
- let a and b  denote the roots of \( 18x^2 + 3x - 28 = 0 \) Find the value of \( (a - 1)(b - 1) \)
- Some basic i.e. the root sum is x and the root's product is y. What is the polynomial?
- Problem from [http://mymathclub.blogspot.com/2018/02/in-praise-of-rational-roots-theorem.html#VietaEx](http://mymathclub.blogspot.com/2018/02/in-praise-of-rational-roots-theorem.html#VietaEx)
- If m an n are nonzero roots of x^2 + mx + n = 0 What does m+n  equal?

Explorations:

- Basic Formula expansions  - quadratic, cubic and maybe symmetric in x,y and low degree
- Reducing various sample polynomials to elementary symmetric polynomials. 

I think I would probably lead with 1 group problem - then a bit of math history. Can I find some media to enhance this and then break back into the whiteboard problems?

Then Stop to do some group work on the idea all symmetric polynomials can be reduced and then try out some expansions. (Maybe tie this further ala Ben's paper or maybe introduce the numberphile video)

Problem: That already is probably more than 1 hour of material.

Another complicated one:

Another really fun exercise:

Given  a cubic equation:  \( x^3 + bx^2 + cx + d \) with roots p, q and r  if you create create a partial fraction decomposition:  

\( \frac{1}{ x^3 + bx^2 + cx + d } = \frac{A}{x -p} +  \frac{B}{x -q} +  \frac{C}{x-r}  \)

Then what is the value of \( \frac{1}{A} + \frac{1}{B} + \frac{1}{C} \)  in terms of the b, c and d?