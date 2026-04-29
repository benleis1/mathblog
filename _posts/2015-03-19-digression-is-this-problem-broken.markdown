---
title: "Digression: Is this problem broken?"
date: 2015-03-19 17:51:00 +0000
tags:
  - Combinatorics
  - digression
  - five triangles
author: me
---

Update: As Dan pointed out I made an incorrect assumption in my sequence generation. The better technique is to generate the 2 lowest integers find the third based on the second sum and the first integer but to then find the fourth integer based on the largest sum.
I was looking at the latest problem from the fivetriangles blog last night.

See: [http://fivetriangles.blogspot.com/2015/03/225-integer-pairs.html](http://fivetriangles.blogspot.com/2015/03/225-integer-pairs.html)

"There are four integers.  The sums of number pairs selected from those four integers are 48, 53, 57, 62, 66, and 71.  Determine the four integers."

Bizarrely enough I don't think there any integral solutions only rational ones.

i.e. (19.5, 28.5, 33.5, 37.5) works.

Here's my messy proof.
To start given six numbers there are  $${4 \choose 2} = 6$$ combinations.  So the given sums are all the possible ones. That also means that all the numbers are distinct since all the sums are also. Note if you add all the partial sums together given the combinatorics you get 3 * sum of all the numbers.  Which means the sum is 119 and that we either have 1 odd number of 3 odd numbers in the set. Given the lowest sum is the sum of the two smallest numbers that means we have 2 cases.

1. The 2 lowest numbers are odd. That means the next number must be even since 53 is odd and the fourth must be even since its the only one left.

That sequence $$O_1, O_2, E_3, 0_4$$ however will produce the following sums

**Even, Odd, Even, Odd, Even, Odd**

2. The 2 lowest numbers are even. Since the largest sum is odd and involves the 2 other numbers. They must be odd and even as well. There are two subcases here.

2a) The sequence $$E_1, E_2, E_3, 0_4$$ which produces the following sums

Even,  Even, Odd, Even, Odd, Odd

2b) The  sequence $$E_1, E_2, O_3, E_4$$ which produces the following sums

Even, Odd, Even, Odd, Even, Odd

None of these patterns match our target set which is **Even, Odd, Odd, Even, Even, Odd**