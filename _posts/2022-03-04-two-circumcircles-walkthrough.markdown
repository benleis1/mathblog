---
title: "Two Circumcircles Walkthrough"
date: 2022-03-04 12:45:00 -0800
tags:
  - cyclic quadrilateral
  - geometry
  - walkthrough
author: me
image:
  path: /assets/img/blogger_cc5cf0c4.png
---

![](/assets/img/blogger_cc5cf0c4.png)
 
 I really enjoyed working through this problem from Stanley Rabinowitz I saw recently on Twitter. This was one of those problems where I circled around it and after finding the first solution realized I could improve it a lot and simplify the algebra fairly drastically.
One first impression,  I saw two things. First there was power of the point at D which could be used to give expressions for DQ and AD.  On the other hand AP looked like  it would be hardest segment to get a purchase on.
My second thought was around the midpoints and filling in the similar triangle DEF looking important as well finding all the congruent and parallel segments it created.
I started also filling in the cycle quadrilaterals as well at this point but didn't immediately see to do with all of this.
Next I fired up geogebra and modelled a few thing.  One I was curious about the circumcenters and if they could help.  That didn't immediately feel promising. The alignment in particular didn't give me anything.   However, I did notice the centroids completely aligned as expected but I hadn't though about that yet. (Others online went from there to homothety)
At this point I went back to a combination of a few of my initial experiments with the cyclic quadrilaterals and similar triangles and started just working out the ratios.
![](/assets/img/blogger_8bb053a9.png)

You can see the basic algebra I worked out with the similar triangles and power of the point around the 2 intersections solved the proof.  But it wasn't entirely satisfying.  Yes the calculation for the two parts were equal but why? It didn't really feel like it was elucidating the structure. 
At this point I  could see that the 2x scaling for a and b above was key but I wondering what would happen if I started from that point. What I found below was  I  could drop all the ratios and just rely on the cyclic quads.

![](/assets/img/blogger_e83cb180.png)

But I kept thinking about the problem some more and had my final conceptual breakthrough. Above I ended up proving GH = 2EO at which point I could just do segment addition and subtraction but what did that imply?   Everything I kept looking at was 2x scaled. So what about the whole cyclic quads and their diagonals? As soon as I adjusted my mental model the final version fell out which is almost completely algebra free and focuses directly on scaling throughout.

![](/assets/img/blogger_cc985a59.png)
 
 
 ![](/assets/img/blogger_f3e102ca.png)
 
 
 

 - 
 The midpoints create an inner triangle DEF that is scaled 1:2 and
 rotated 180 degrees
 

 - 
 When circumscribed we then get 2 cyclic quadrilateral   DEPF
 and ABQC that are also scaled 1:2  and rotated 180 degrees
 

 

 
 
 ![](/assets/img/blogger_3da51d62.png)
 
 
 

 - That means the central diagonals AQ and PD are also scaled 1:2

 - 
 If AQ = 2PD then AQ - PD = PD or recasting  AP + DQ  = PD
 

 

 
 

 

 

 

 
 ![](/assets/img/blogger_6320627b.png)
