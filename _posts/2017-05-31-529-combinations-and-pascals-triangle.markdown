---
title: "5/29 Combinations and Pascal's Triangle"
date: 2017-05-31 20:15:00 +0000
tags:
  - sierpinski
  - pascal's triangle
  - Combinatorics
author: me
---

This week I decided to hit a bit of combinatorics before the year ends. I know most of the kids understand [permutations](https://en.wikipedia.org/wiki/Permutation) fairly well but not [combinations](https://en.wikipedia.org/wiki/Combination) and that seemed fairly accessible.  I like the connection between combinations and Pascal's triangle and that led me to the idea of warming up with a repeat from "This is not a Math Book".

!![](https://images-na.ssl-images-amazon.com/images/I/51dBo8-d8rL._AC_UL160_.jpg)

In probably my favorite page of the book, Anna has a coloring exercise with Pascal's triangle where you search for patterns after coloring all square that are multiples of 2 different numbers, 2 different colors. I've used this before and it still drew the kids in (even the ones who were here last year).

!![](https://i.ytimg.com/vi/gn_GXitfnr0/maxresdefault.jpg)

After maybe 10 minutes of coloring, we gathered together to discuss what we had noticed. There were a lot of mentions of symmetry and triangles. I pointed out several examples of [Sierpinski's triangle](https://en.wikipedia.org/wiki/Sierpinski_triangle) since these keep recurring this year. [Maybe a whole session on fractals is in order at some point.]  I told all the kids that we'd come back to the triangle but we now were moving to our main task.

From there we talked first about permutations with some group questions on the order of how many ways are there to pick a pair of socks to wear  for a week out of a sock drawer with 7 pairs.  Factorials are pretty well known by now so I just reviewed them on the board after one boy mentioned them.

Next we moved to combinations (my main target).  I started with a group question about picking teams emphasizing the order in which you pick was not important. I chose $4 \choose{2}$ as a starting point. We took predictions on the result and then the kids worked in tables to enumerate and figure out the answer. Predictably some thought at first it would just be 4 x 3 but after a few minutes the truth was discovered and the kids were able to give some informal reasoning about removing duplicates by dividing by 2.  I then expanded and asked what they thought $10 \choose{4}$  would be.  Some kids again predicted that it would be like the permutation but divided by 2.  Again I let everyone work on finding the enumerated answer.

At this point I wrote out the formula $ n \choose{m}$ = $ \frac{n * (n-1) * (n-2)... (n-m+1)}{m!}$

and asked if anyone could figure out why this was happening? 

Unfortunately, no one had a good idea about the denominator. I tried some leading questions how would you calculate the number of duplicates given a concrete set of say 4 items. But in the end, I related this back to combinations by saying the top was the total permutations but included duplicates and for each individual class of duplicates the denominator showed the number of permutations i.e. for pairs: duplicates come in 2 but for trios they come in 6 etc.  [If repeating I think I would linger here and try some more examples as group work to see if more intuitions would develop.]

Finally, for my favorite part I had the kids calculate and write all the combinations for 2, 3 and 4 on the board in a pyramid:

           $ 2 \choose{0}$  $ 2 \choose{1}$  $ 2 \choose{2}$

      $ 3 \choose{0}$  $ 3 \choose{1}$  $3 \choose{2}$  $3 \choose{3}$

 $ 4 \choose{0}$  $4 \choose{1}$  $4 \choose{2}$  $4 \choose{3}$   $4 \choose{4}$

What do notice now?  This elicited some wows when Pascal's triangle re-emerged. So again because this is a bit mysterious I went into an informal explanation centered on the there being 2 cases:

- The new element n is in the set you pick and then there are combinations of the n - 1 elements for the rest of the set i.e. the left parent.
- The new element n is not in the set and there n combinations with the rest of the set i.e. the right parent.

This also works best with concrete examples. 

Finally, I found a decent problem set that I based  my own problem set off of: [My sheet](https://drive.google.com/open?id=1Jw0PXImjmGijS-SlH-9pXOsL_VdNXhW9ByDyXs9KlNo). Going in though I was a bit worried. This is the end of the year, and I wasn't sure how much focus I could count on. So I hedged my bets a bit and brought another set of [skyscraper puzzles](https://www.brainbashers.com/skyscrapers.asp?error=Y) with the idea that I would offer them to the kids if they started to flag at the end.  This turned out to be prescient. What I hadn't counted on was today was also a standardized testing day and therefore the kids were more drained than usual after several hours of SBAC testing.  If I had known that ahead of time, I think I would have compromised and picked maybe 3 problems to do on the whiteboards instead of at the table.

For the long run, I still have the aspirational goal of being able to have a group of kids spend 20-30 minutes working through a short problem set (10 or less) of interesting problems. I'm not completely certain that's realistic (ok I'm fairly certain that if it is, its not easy) and I've pivoted more towards group white-boarding or providing choices in these scenarios which allow the kids to work on the problem set or a lighter puzzle and switch between tasks.  What I'd really like is some kind of reward/competition that was motivating but not discouraging for the room in these scenarios. Based on the odd fact the kids really liked the Lima beans we used as counters several times, I'm tempted to try spray painting a bag different colors and handing them out as prizes to see what happens.

Problem of the Week

An algebra one from the mathforum that doesn't really need formal Algebra to work it out:

[http://mathforum.org/pow/teacher/samples/MathForumSampleAlgebraProblem.pdf](http://mathforum.org/pow/teacher/samples/MathForumSampleAlgebraProblem.pdf)

Todo:

I just saw a recent video [ https://youtu.be/KYaCtHPCARc](https://youtu.be/KYaCtHPCARc) on infinite series using pascal's triangle to look at hypercubes. This may make a cool followup for next week.