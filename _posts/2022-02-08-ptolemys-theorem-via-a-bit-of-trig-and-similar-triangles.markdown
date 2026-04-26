---
title: "Ptolemy's Theorem via a bit of Trig and similar triangles"
date: 2022-02-08 17:53:00 -0800
categories:
  - law of cosines
  - ptolemy
  - trigonometry
author: Benjamin Leis
image:
  path: /assets/img/blogger_be92a745.png
---

![](/assets/img/blogger_be92a745.png)

Here's a straightforward trigonometric proof of Ptolemy's Theorem using scale factors and the Law of Cosines.
First we start with a cyclic quadrilateral and assign it segment lengths:

1. $ \triangle{CDE} $  has edges of length x, y and z.
2. $ \triangle{BEA} \sim \triangle{CDE} $ so we give a scale factor k  and then edges of length kx, ky, kz.
3. $ \triangle{BEC} \sim \triangle{AED} $ and from the  given values the scale factor is x:y so we add the last side w and scale it appropriately to wy and wx.

Next we compute  $ AD \cdot BC + CD \cdot AB  = w^2xy + kz^2 $
And then we apply the Law of Cosines twice on the central point E

- $ w^2 = k^2 + 1 - 2k\cos{(\pi - \theta)} =  k^2 + 1 + 2k\cos{\theta} $
- $ z^2 = x^2 + y^2 - 2xy\cos{\theta} $

(Note for the second one  I scaled everything down.)
Finally we substitute these expression into the original one  which leads to a happy cancellation and we get:

$$ AD \cdot BC + CD \cdot AB  = (k^2 + 1 + 2k\cos{\theta}) \cdot xy + k \cdot (x^2 + y^2 - 2xy\cos{\theta})$$$$ AD \cdot BC + CD \cdot AB  = k^2xy + xy + kx^2 + ky^2$$$$ AD \cdot BC + CD \cdot AB  = (ky + x)\cdot(kx + y)$$$$ AD \cdot BC + CD \cdot AB  = AC \cdot BD$$

![](/assets/img/blogger_6320627b.png)
