---
title: "4/21 Purple Comet Online Meet"
date: 2015-04-24 04:45:00 +0000
tags:
  - purple comet
  - contest
author: me
---

This week of math club we tried out the online Purple Comet Math Contest. [http://purplecomet.org](http://purplecomet.org/home/home?). Running the contest required a few modifications to our normal format. We worked in the library so we could have access to the computers and skipped any snacks or warmups since the lasted the entire 60 minutes. I've also been delaying posting of this entry until after the contest ends so I can discuss a few of the problems.

Overall the contest worked out fairly well. Of 20 questions most of the first 15 were potentially doable with their knowledge base .  A few in between I think were most likely to need algebra and then their were the remainder that made me raise my eyebrows. Each team of 4-5 kids solved 4-6 problems out of 20 which was about what I expected although I was hoping for a little closer to 8. The hardest part for the kids was keeping focus after about 30-40 minutes. Its really hard to keep going and not just give up and start chatting after you've tilted at problems that need a clever solution.  I'm going to debrief everyone next time and see how they liked the experience. In the future we could do some of the problems as individual items on a week to week basis like I sometime use the five triangle problems instead of actually competing.   If done that way they could be potentially scaffolded a bit.  On the other hand sometimes the element of competition is motivating.  The other logistical problem I have is that more kids were out than normal and I plan to go over the problems as a group next session. I'm going to email out a pdf of the contest so those who were absent can look at them. The dilemma is that those who were here deserve a group discussion / understanding of solutions  to the problems they tried but talking about a large group of  problems that  were unseen tends to be counter productive for the rest. Also I don't plan to discuss most of the back problems unless prompted by the kids since I think they were mostly out of scope.

Selected Problem Discussion

6*. Find the least positive integer whose digits add to a multiple of 27 yet the number itself is not a multiple  of 27. For example, 87999921 is one such number.*

My first thought was if the digits add to 27 then its definitely a multiple of 9 and that the example is more a red herring.  This is actually quite easy to find via a guess and check strategy. First there are no 1 or 2 digit numbers whose digits sum to 27 at all and there is only one 3 digit number which is 999 but its also divisible by 27 and not the answer. So then onto the 4 digit cases. Since we want to start with the smallest candidate set the 1000th place to 1 and maximize the lower places i.e. the next number is 1899.  1899 / 9 is 211 which is not divisible by 3 using the divisibility test and thus the answer.  As I remember both groups arrived at the solution.

12. 

![]({{ site.baseurl }}/assets/img/421-purple-comet-online-meet/blogger_b3780b24.png)

*Right triangle ABC with a right angle at A has AB = 20 and AC = 15. Point D is on AB with BD  = 2*

*Points E and F are placed on ray CA and ray CB respectively such that CD is a median of triangle CEF,  Find the area of triangle CEF.*

The hardest part of this problem is that the drawing was incomplete and I completely misinterpreted what they were asking on my first read. I assumed E was in the middle of CA and F in the middle of CB and that CD went along the median as so:

![]({{ site.baseurl }}/assets/img/421-purple-comet-online-meet/blogger_b90dbee8.png)
This figure as I found out is unconstrained and has multiple solutions. What I completely missed was they really meant ray not segment where it was written and CD is the exact median.

![]({{ site.baseurl }}/assets/img/421-purple-comet-online-meet/blogger_3cb5c300.png)
That means point F has to be out beyond the original triangle like the above picture and this is quite a different problem. Luckily this version is much simpler than my first interpretation and very solvable using similar triangles. Some initial observations: triangle CEF is made up of 3 triangles  one of which we already can calculate: CBD. Also because CD is the median of the triangle CBD + BDF is one half of the median and CDE is the other and they both have an equal area. So our goal is to to find either one of the remaining triangles and the area will fall out.

Now comes the  use of similar triangles. Since CD is a median that means ED is the same length as DF and that triangle EDA is similar to EFA'  scaled up 2x. So since DA is 18 FA' is 36 in length. Then we also know triangle CBA is similar to CFA' and we can scale again CA' / CA = FA'/BA or CA'/15 = 36/20 and CA' = 27.    That gives us all the dimensions needed to find requested triangle. CBD is  1/2 * 15 * 2 = 15 based on the original dimension. BDF 1/2 * 2 * (AA')  AA' = (27-15) = 12. so BDF is 12. That means CFD the sum of the two previous triangles is 15 + 12 = 27 and since that's also one half of the median of CEF, the final area must be 54.  Overall doable but a full diagram would improve the question making it less about what I found a subtle visualization.

19.  *Find the real solution for the following:*

$a^2 + 3b^2 + \frac{c^2 + 3d^2}2 = a + b + c + d - 1$

At first glance this looks ill-defined given the four variables. A little bit of experimentation shows that the left hand side is almost always larger than right and that there are no real solutions if you zero out any of the terms (although that requires alg2 analysis and some understanding of the quadratic formula)

The key here is realizing that this is actually the sum of four parabolas:

$a^2 -a, 3b^2 - b, \frac{c^2}2 - c$ and  $\frac{3d^2}2 - d$ each of which must have a minimum value.  The problem as stated strongly suggests that the sum of the minimums is likely to be the solution or otherwise there would be multiple answers but in any case its interesting to determine the floor for the total value.

Now either you know the formula for the vertex of a parabola $ax^2 + bx + c$ is  $-b/2a$ or set the derivative of each parabola function to zero to solve (Advanced Geometry or 1st year Calculus) for each term and you derive

$a^2 -a$ has a minimum of -1/4 at a =1/2

$3b^2 - b$ has a minimum of  -1/12 at b = 1/6

$\frac{c^2}2 - c$ has a minimum of -1/2 at c  = 1

$\frac{3d^2}2 - d$ has a minimum of -1/6  at d = 1/3

Lo and behold -1/4 + -1/12 + -1/2 + -1/6  =  -1!  and its done.  I'm waiting to see the official contest solutions but I don't see any obvious shortcuts for the geometry/quadratic analysis besides maybe graphing the parabolas and guessing the vertex from the graph. And even that would still require insight to split the function apart and that look at the sub functions. All of which I think makes this a great maybe 10-11th grade problem in my book rather than even a MS level question.