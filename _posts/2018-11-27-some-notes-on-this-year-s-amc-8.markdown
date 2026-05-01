---
title: "Some notes on this year 's AMC 8"
date: 2018-11-27 17:10:00 +0000
tags:
  - amc 8
author: me
---

Now that the AMC problems have been publicly released: [Link to 2018 set](https://artofproblemsolving.com/wiki/index.php?title=2018_AMC_8_Problems)  I thought it would be fun to discuss a few from the last five.  Before starting I also need to add a few remarks. First, the last five or so questions are a notch up in difficulty and usually the most interesting. I'm always on the look out for what geometry ones are picked.  What really makes them difficult, however, is the very limited time. 40 minutes for the entire 25 problems leaves only a few minutes in theory for these. Since I'm personally long past being a middle schooler while I can solve all of them I can't necessarily do it in the very tight time frame.  From a competitive standpoint learning how to do these quickly and use shortcuts if possible is key to a high score. However,  from a mathematical perspective that doesn't matter at all and its actually much more useful to slowly and thoroughly work your way through them and understand what underlies each  one.  I try as best as I can when talking to all the kids to stress this tension and the importance of the long term goals over the artificial test format.

So the first problem I picked was:

![]({{ site.baseurl }}/assets/img/some-notes-on-this-year-s-amc-8/blogger_4cdeb327.PNG)

This is actually a fairly standard number theory question with one hitch embedded within it. So how should you attack it?

- First a quick look at the structure and the knowledge that the results will be cyclic means its interesting to do a rough estimate.  The first thought that comes to  mind for many kids seems to be the cycle is:  9 x 11 x 6 = 594.  That means within the numbers between 100 and 999 there is only a possibility of 1 or 2 fits.   However this overlooks one key piece: 6 and  9 are **not **relatively prime and that will shorten the cycle. In fact they cycle every 18 rather 54 numbers and so the overall cycle is 18 x 11 = 198.  So the real possible solution set is either 4 or 5 and depends on whether the first number lies in the first or second hundred numbers or so. 

- So what to do if you miss this?  The best strategy is to double check once you have the first number how it changes mod 9, 11 and 6 and/or to think about whether the cycles of each pair of two numbers makes sense.

- Secondly under test circumstances, I think lists are a good strategy. I have a preference  for picking the larger two of the three numbers first but its fairly useful to do the relatively prime ones rather than 6 or 9 in terms of making quick progress. 

- So in specific you could pick a 9 and 11 and start with 5 adding 9 on one side and 7 adding 11 on the other until you find the  first match (which must be under 99 from the start).  I actually prefer just doing one of the columns i..e 11 and computing the result mod 9 on the other side which is a bit more efficient for me.  This would lead to 95 as the first partial result. 

- A slightly more formal method would be to set 9a + 5 = 11b + 7 and simplify taking mod 9 on both sides.  This results in 2b = 7 mod 9 or b = 8 mod 9 you can then substitute b = 9c + 8 back into the original right hand expression to get 99c + 95  for one side or c = 95 mod 99.  Which is the same result as above.

- In either case you can then take the result mod 6 which is **5 **not the required **2.** But a quick test shows this will cycle between 2 mod 6 and 5 mod 6 every 99 numbers. So this boils down to the first hit is: 194 and there will be a result in the 300's, 500's, 700's and 900's i.e. the set size is 5. 

![]({{ site.baseurl }}/assets/img/some-notes-on-this-year-s-amc-8/blogger_40049f52.PNG)

The next problem I chose was a fun combinatorics problem. Full confession: these always trip me up. I tend to over or under count and/or mix up dependent and independent variable when making my original assumptions.  So for these I always try to do it 2 ways to double check my approach and then resolve any discrepancies to my satisfaction.  In fact, in real life, I would be tempted to write a short python program and just check every result.

Before diving in though, its again important to examine the structure. One key question to ask is how many possible triangles are there in the diagram?  That gives us the denominator for any of the fraction as well as bounding the amount of work to.   Since you can pick any 3 points and generate a triangle and there is total set of 8 point this must be  ${8 \choose 3} = 56 $   That explains the multiples of 7 in the possible answers (and actually probably eliminates choice b)  but it also means that the straightforward approach of just writing all 56 subsets out and counting is a fairly safe efficient  strategy.

Whenever just counting its key to be methodical and ordered to avoid mistakes. For this I just listed sets in numerical order and computed subtotals along the way i.e.

1,2,3

1,2,4

1,2,5

1,2,6

1,2,7

1,2,8

(In all of these 1 and 2 are adjacent so we 6 hits)

1,3,4

1,3,5

1,3,6

1,3,7

1,3,8

Note: Because I'm ordering I can can skip 1,3,2 which was done earlier and this set only has 1,3,4 as a hit.  At this point we're already about 20% done.

This continues through:   6,7,8 after which there are no new combinations. You can then total the results to make sure there are 56 total and see how many matched (double checking for mistakes) If you were accurate you'll find 40 matches and the result is therefore 5/7

But as I said I like to do this multiple ways and the counting method while safe is not actually very satisfying.  So the next thought I had was actually I  can take the positive or negative approach counting either the number of sets that match the condition OR the the number of sets that don't.

The direct approach is not too bad.  In the octagon: you can pick one of 8 sides and the that leaves 6 points that you can connect it to in order to form a triangle.   So naively there are 8*6 = 48 possibilities.  However, a  quick check for over counting reveals that you're going to double count any triangle that is made up of 3 adjacent points.  There can only be 8 of those, one centered at each vertex so the true total is 40.

The inverse case was a bit more interesting with a funny gotcha embedded in it.  In this version: you have 8 starting points. You can then pick one of 5 points as the second point and various combinations of 2 or 3 points as the third. Just totally them up you end up with 8 x 12 = 96 possibilities. This is a big over count and after thinking about it for a moment I realized every triangle is going to get counted three times in this method depending on which vertex is first. But dividing by 3 gets you only down to 32 possibilities (32 + 40 != 56) so we're still over-counting. I actually had to consult my straight enumeration to see what was going on (which shows the power of enumeration and of modelling a bit to check your assumptions).  In addition, to over counting by the starting vertex, the logic above also counted the same triangle twice with a clockwise and counterclockwise version i.e.  1,3,5 and 1, 5, 3. So you need to divide  by 6 giving 16 possibilities where there is no outside edge in the triangle.  And therefore 56-16 = 40 possibilities where that does happen.

