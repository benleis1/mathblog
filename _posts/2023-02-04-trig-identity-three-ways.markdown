---
layout: post
title: "Trig identity Three Ways (at least)"
date: 2023-02-04 01:43:00 +0000
categories: [Mathematics, Trigonometry]
tags: [trigonometry, identities, proofs]
author: me
math: true
image:
  path: /assets/img/2023-02-04/trig-identity-triangle.png
---

![Trig Identity Triangle](/assets/img/2023-02-04/trig-identity-triangle.png){: width="640" }

This post starts with reading elsewhere about someone struggling with the following trig identity given a triangle with three angles x, y, z show:

$$ \tan{x} + \tan{y} + \tan{z} = \tan{x}\cdot\tan{y}\cdot\tan{z} $$

## The Straightforward approach

The first way I ended up doing this which was colored by some similar problems was just by working left to right and simplifying the expression with the hope I ended up with the right hand side.

Before getting going though its useful to examine the relationship between x, y, and z and how that plays out with the basic trig functions

1. \( \sin{z} = \sin{(\pi - (x + y))} = \sin{(x + y)} \)
2. \( \cos{z} = \cos{(\pi - (x + y))} = -\cos{(x + y)} \)

First looking at the first two terms restate in terms of sine and cosine:

$$ \tan{x} + \tan{y} = \frac{\sin{x}}{\cos{x}} + \frac{\sin{y}}{\cos{y}} = \frac{\sin{x}\cdot\cos{y} + \sin{y}\cdot\cos{x}}{\cos{x}\cdot\cos{y}} $$

That top expression should look familiar: its sine addition

$$ \tan{x} + \tan{y} = \frac{\sin(x + y)}{\cos{x}\cdot\cos{y}} $$

And we can then restate in terms of z

$$ \tan{x} + \tan{y} = \frac{\sin{z}}{\cos{x}\cdot\cos{y}} $$

That feels like progress since we've converted everything into products and we have part of the right hand side already. Next we need to combine the remaining piece on the left hand side:

$$ \tan{x} + \tan{y} + \tan{z} = \frac{\sin{z}}{\cos{x}\cdot\cos{y}} + \tan{z} = \frac{\sin(z)\cdot\cos{z} + \sin{z}\cdot\cos{x}\cdot\cos{y}}{\cos{x}\cdot\cos{y}\cdot\cos{z}} $$

I'm going to factor out \( \sin{z} \)

$$ \tan{x} + \tan{y} + \tan{z} = \sin{z} \cdot \frac{\cos{z} + \cos{x}\cdot\cos{y}}{\cos{x}\cdot\cos{y}\cdot\cos{z}} $$

And now we'll once again replace \( \cos{z} \) with its equivalent in terms of x and y (after all we only want x and y now in the remaining expression)

$$ \tan{x} + \tan{y} + \tan{z} = \sin{z} \cdot \frac{-\cos{(x + y)} + \cos{x}\cdot\cos{y}}{\cos{x}\cdot\cos{y}\cdot\cos{z}} $$

That's convenient for when we expand the cosine addition we get:

$$ \tan{x} + \tan{y} + \tan{z} = \sin{z} \cdot \frac{-\cos{x}\cdot\cos{y} + \sin{x}\cdot\sin{y} + \cos{x}\cdot\cos{y}}{\cos{x}\cdot\cos{y}\cdot\cos{z}} = \sin{z} \cdot \frac{\sin{x}\cdot\sin{y}}{\cos{x}\cdot\cos{y}\cdot\cos{z}} $$

And that's exactly the right hand sign expression!

## But wait ...

I translated to sine and cosine reflexively when starting before because it usually makes things more approachable. But can we directly manipulate the tangents and follow the same general flow?

To start I'm going to add the a third equivalence relation

3. \( \tan{z} = \tan{(\pi - (x + y))} = -\tan{(x + y)} \)

Lets substitute that in

$$ \tan{x} + \tan{y} + \tan{z} = \tan{x} + \tan{y} - \tan{(x+y)} $$

And then apply the tangent addition identity

$$ \tan{x} + \tan{y} + \tan{z} = \tan{x} + \tan{y} - \frac{\tan{x} + \tan{y}}{1 - \tan{x}\cdot\tan{y}} $$

Simplifying that into a common fraction we get a few cancellations:

$$ \tan{x} + \tan{y} + \tan{z} = \frac{ -(\tan{x} + \tan{y}) \cdot\tan{x}\cdot\tan{y} }{1 - \tan{x}\cdot\tan{y}} $$

And then we can just apply 3. again and do everything in reverse to get the desired result

$$ \tan{x} + \tan{y} + \tan{z} = \tan{x}\cdot\tan{y}\cdot \frac{ -(\tan{x} + \tan{y}) }{1 - \tan{x}\cdot\tan{y}} $$

$$ \tan{x} + \tan{y} + \tan{z} = \tan{x}\cdot\tan{y}\cdot -\tan{(x + y)} = \tan{x}\cdot\tan{y}\cdot\tan{z} $$
