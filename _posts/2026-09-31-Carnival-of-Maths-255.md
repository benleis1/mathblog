---
title: "Carnival of Maths 255"
date: 2026-10-02
tags: [carnival of math]
author: me
math: true
---

# Intro

![]({{ site.baseurl }}/assets/img/carnival-255/255.png)

Welcome to the 255th Carnival of Mathematics  For all the other carnivals future and past, visit [The Aperiodical ](https://aperiodical.com/carnival-of-mathematics/)where you can also submit future posts. . I'm really excited to be hosting again after a several year gap on my newly re-platformed blog.  As is traditional, let's start with a few facts about 255 courtesy of the Wikipedia.

* Its factorization makes it a [sphenic number](https://en.wikipedia.org/wiki/Sphenic_number) .
* Since 255 = 28 – 1, it is a [Mersenne number](https://en.wikipedia.org/wiki/Mersenne_number) (though not a pernicious one), and the fifth such number not to be a prime number.
* It is a [perfect totient number](https://en.wikipedia.org/wiki/Perfect_totient_number),  the smallest such number to be neither a power of three nor thrice a prime.
* Since 255 is the product of the first three Fermat primes, the regular 255-gon is constructible.

![]({{ site.baseurl }}/assets/img/carnival-255/255gon.gif)

	diacosiapentacontapentagon

Personally 255 resonates with me because its 0xff in hexadecimal a fairly common occurrence in
coding often use as a bit mask. And long ago when I was in middle school I actually built my own
digital adder out of circuits that was capable of adding up to it.  (Although next month's lucky
carnival editor will have 256 which is even more evocative in computing.) 

# Submissions

There were a huge number of submissions this month and while a bit daunting is was a lot of fun
working through all of them.

## Games

![]({{ site.baseurl }}/assets/img/carnival-255/hexsum.png)
*  First up is this fun looking arithmetic based [puzzle](http://mathmisery.com/wp/2026/09/27/hexsum-in-your-classroom-a-walkthrough) from mathmisery. I gave it a whirl and I agree this has a lot of potential as a warm up in classroom settings or just for your own personal enjoyment.

* Next this [game](https://play.questviva.com/player/?id=03jdskpybuk_nfky5dypbq) describes an algorithm for shuffling cards fairly. It's used in statistics, cryptography and computer games. It has to be implemented carefully because a common mistake produces a shuffle that's catastrophically biased. It's worth studying how bad the biased shuffle is, and some mathematical results about it are unexpected. For example, once we have at least 18 cards, the most likely permutation is the identity, where none of the cards change position.


## Probability and Combinatorics

* Skewray has some [updates](https://www.skewray.com/articles/notes-on-probability#convolution) to his probability notes including a section on convolutions and group symmetries over probability spaces. This feel useful if you're taking a class in this space or boning up on the subject.

* A birthday [celebration](https://gilkalai.wordpress.com/2026/09/02/annotated-slides-micha-a-perles-90th-birthday-meeting/)
  for Micha Perles is an opportunity to survey everything combinatorial geometry

* John Carlos Baez writes another fun [blog post ](https://johncarlosbaez.wordpress.com/2026/09/20/binomial-coefficient-coincidences/)
  on coincidences among the binomial coefficients.

# Number Theory
[Video](https://www.youtube.com/watch?v=NuTscpKcOrI)
 A short video on why a composite number has only one prime
factorisation. Rather than drawing two factor trees and noting that
the tips agree, it builds every factor tree of 32760 - 15,015 of them,
from 47 ways of splitting at the top - and shows that all 15,015 end
in the same eight primes. Then it ties off the two loose threads that
make the theorem true rather than merely plausible: the 3,360 orders
those primes can be written in, and why exactly one of them is the
convention.

## AI and Mathematics

* An update via Gil Kalai on another breakthrough from LLM models. This time around percolations:
[link](https://gilkalai.wordpress.com/2026/09/03/amazing-there-is-no-percolation-at-the-critical-probability-in-all-dimensions-solved-by-ai-via-a-conjecture-of-gady-kozma-and-shahaf-nitzan)

* Proof and prompts ponders the consequences of AI and the field  [here](https://proofsandprompts.com/2026/08/30/care-for-a-little-more-ai/)

> The effects of AI are vast, and there is much to be said about its broader impact on society. One should also remind that mathematicians have a role to play in advancing research on AI safety. I do not feel sufficiently qualified to address these wider questions here, so I will instead focus on the direct effects that the current use of AI is having on the mathematical community and provide my experience as a practicing mathematician.

*  Although this [Announcement](https://terrytao.wordpress.com/2026/09/21/advisory-group-on-mathematics-and-artificial-intelligence/) is hosted on Terence Tao's blog, Tao is not on this Advisory Group.  Gowers, who refused to sign the Fields medal-winners' letter A Severe Misalignment of AI in Mathematics, is on the Advisory Group. Are we seeing two camps forming: Join forces with OpenAI vs Teach OpenAI to behave?

## Cryptography

* This recent podcast [episode](https://cyberraum-podcast.podigee.io/30-kryptologie-quantencomputer)
(published on September 10, 2026) explores the mathematics behind modern cryptology, including prime
factorisation, cryptographic constructions, cryptanalysis, and the mathematical impact of quantum
computers. It offers an accessible discussion of an engineers perspective with a mathematician and
cryptologist about why certain mathematical problems underpin cryptographic security and how new
mathematics is needed for post-quantum cryptography. As a recently published non-blog format, it
provides an engaging way to connect mathematical theory with a major real-world application.


* This [post]( https://crail.dev/blog/zero-hash-challenge)  by Joseph Crail uses graph theory to deterministically
find specific collisions of a hash algorithm while using number theory to drastically reduce the
search space. The solution avoids a prohibitively expensive exhaustive search or the necessity of
high-end hardware.

## Art

![]({{ site.baseurl }}/assets/img/carnival-255/tesselation.webp)
* Some lovely looking tesselations from Matt Zucker's upcoming class.
[Post](https://bsky.app/profile/mattz.bsky.social/post/3mv4akztoe22n)


<video width="100%" height="auto" controls>
  <source src="{{ site.baseurl }}/assets/videos/mhenderson2.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>

* Matt Henderson shared some cool
[animations](https://bsky.app/profile/matthen.com/post/3mvxdzadgds2z)  with sand and physics that create an ellipse and a parabola. Great visual!

* Theorem of the Day features on The Art of Mathematics
[podcast](https://creators.spotify.com/pod/profile/the-art-of-mathematics/episodes/Theorem-of-the-Day-e3oam60).
Carol Jacoby expertly hosts many wonderful speakers and deserves a big hurrah.

![]({{ site.baseurl }}/assets/img/carnival-255/fractalk.jpg)
*  Fractal Kitty has another set of  beautiful visualizations out on her [site](https://www.fractalkitty.com/mrs-perkins-quilt/).

* The September proof without words [playlist](https://www.youtube.com/playlist?list=PLL-DkzdK4Bw8)  is out.


## Abstract Algebra 
This is a geometric  [proof]( https://numbersystems.lejdar-lukas.workers.dev/) from Lejdar Lukas  of why normed division algebras
exist only in dimensions 1,2,4 and 8. The idea behind it is that left
or right multiplication by any unit vector u orthogonal to 1,  should
be represented by a linear map U that is both orthogonal and
skew-symmetric.  U^TU = I, U = -U^T => U^2 = -I. From there, it
constructs multiplication tables explicitly, finding R, C, H and O. In
dimensions > 8 it runs into a contradiction, which proves the theore

## Measure Theory
Skewray has another light hearted
[post](https://www.skewray.com/articles/continuity-induced-metrics-on-measures) on the subject of
measure theory..  Along with a bit of inappropriate humor, he careens off of continuity, equivalence
classes, orderings, lattices and semilattices, order topologies, and metrics. Oh, and the subject is
change of variable.

## Geometry

*  John Golden [shares](https://www.tumblr.com/mathhombre/828294a147307962368/transversal-and-parallels?source=share) some cool parallels and transversals in amazing home DIY video. I would love to
take screen shots and ask geometry students to justify why the woodworking cuts "work".

* This [post](https://social.wub.site/@david/117281594192985814)  on Mastodon from David Renshaw
talks about how a polyhedron is "Rupert" if it "fits through itself". The Noperthedron was the first
polyhedron proven to be non-Rupert. But what's the simplest one?  David released a video showing
that this polyhedron actually does have a Rupert passage, albeit with a very tiny margin

	<iframe width="560" height="315" src="https://www.youtube.com/embed/XFeKRSN9l9w?si=RaChKnSrJSuKkif2" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe> <p><p>

* A second interesting math [tidbit](https://mathstodon.xyz/@johncarlosbaez/116392959962341875) from John Carlos Baez. Coxeter and Boerdijk noticed that you can stick regular tetrahedra together to make a helix.   It never repeats: no two tetrahedra have the same orientation in space!
![]({{ site.baseurl }}/assets/img/carnival-255/spiral.png)

## Math History
* The Renaissance Mathematicus blog has an interesting [piece](https://thonyc.wordpress.com/2026/09/09/take-it-to-the-limit-one-more-time-a-history-of-calculus-iv/) on how the method of exhaustion was
developed totally independently in China and used in very much the same way as in Greek mathematics

*  From John Cook:  "A couple days ago a friend
told me about the book Carry On, Mr. Bowditch, a fictional account of the life of Nathaniel Bowditch
(1773–1838). I’ve been listening to the book on Audible, and apparently it’s only lightly
fictionalized." [Link](https://www.johndcook.com/blog/2026/09/22/nathaniel-bowditch/) 

* The [mastowall](https://rstockm.github.io/mastowall/?hashtags=riemann200&server=https%3A%2F%2Fmastodon.social)l created for Riemann's 200th birthday by @tetrartys@mastoart.social


# Epilogue

Thanks for reading this month. In a fraught moment i n human history this has been a welcome distraction compiling.



