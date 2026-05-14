---
title: "Looking at a parabola and going off on 4 tangents"
date: 2026-05-13
tags: [parabola, tangent]
author: me
math: true
---
As the curriculum sequence is normally presented, we don't usually consider tangent lines to curves until Calculus. As a result, taking a derivative might seem like the only way to find a tangent. Interestingly, that's very far from the case. So here I'll demonstrate **3** other ways to do it without Calculus

![]({{ site.baseurl }}/assets/img/tangent-4-ways/base.png){:width="80%"}
<p/>
Our test parabola $ 2x^2 + 3x + 2$ and the point P at $(-\frac{1}{2},1)$


# Algebra

With only the tools from Algebra I, we can already attack this problem.

1. First let's assume there is some tangent line $y = mx + b$ that goes through b. In this case its more convenient to use point slope notation.  $ m = \frac{y - 1}{x + \frac{1}{2}}$

2. We want this to intersect the parabola so we set the two expressions equal to each other: $mx + \frac{m}{2} + 1 =  2x^2 + 3x + 2$

3. That simplifies to: $0 = 2x^2 + (3-m)x + (1 - \frac{m}{2})$

4. Now we want a single solution to this equation since the tangent intersects only once and to do that we need the [discriminant](https://en.wikipedia.org/wiki/Discriminant) to be 0. That works out to  $ (3-m)^2 - 4 \cdot 2 \cdot (1 - \frac{m}{2}) = 0$ 

5. Conveniently (**why?**) that quadratic simplifies to $ (m-1)^2 = 0$. We can now plug the slope of 1 back into our equation in step 1. This gives us  $1 = \frac{y - 1}{x + \frac{1}{2}}$ or reorganizing a bit $y=x + \frac{3}{2} $


# Geometry via the directrix-focus formulation.

In my last post  [post]({% post_url 2026-05-11-parabola-reflection %}) I delved into how the perpendicular bisector of the segment between the focus and a perpendicular down to the directrix is also the tangent line.

For this equation, the focus is at $(-\frac{3}{4}, 1)$ and the directrix is $y= \frac{3}{4}$
The slope of this segment is $ \frac{1 - \frac{3}{4}}{-\frac{3}{4} + \frac{1}{2}} = -1$

The perpendicular to this segment is its inverse reciprocal and has a slope of 1. So we can again utilize point slope form to get $1 =\frac{y -1}{x + \frac{1}{2}}$  This simplies again to $ y = x + \frac{3}{2}$


# Polynomial division

Its not as widely known but you can find the tangent line for any polynomial at $x=x_0$ by dividing by $(x-x_0)^2$ See: [post with discussion about this]({% post_url 2019-10-12-nwmc-19-post-conference-thoughts %})

So in this case since we're look at $x_0 = -.5$.

$$
\begin{array}{rl}
	2 \phantom{0} \\[-3pt]
    x^2 + x  + .25 \enclose{longdiv}{2x^2 + 3x + 2} \phantom{0}  \\[-3pt]
    \underline{-(2x^2 + 2x + .5)}  \\[-3pt]
    x + 1.5 \phantom{0} \\[-3pt]
\end{array}
$$

Or in other words the tangent line is  $ y = x + \frac{3}{2}$


# Calculus
Finally for comparison via the derivative:

$f'(x) = 4x + 3$  and $f'(.5) = 1$  That's consistent with all of above and if plugged into point slope from will give us the equation $ y = x + \frac{3}{2}$ for the fourth time
