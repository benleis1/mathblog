---
title: "Reversing digits"
date: 2015-10-02 04:26:00 +0000
tags:
  - Kaprekar's operation
  - middle school
  - number theory
author: me
---

Moderator Note:  What's better than one semi math-crazy after school coach? How about two of them. My friend Dan has agreed to run our feeder Middle School's Math Club and after patiently listening to me talk about the blog for a year I've convinced him to contribute to it. So without further ado:

At the middle school, the Algebra 2 teacher gave a fun "Problem of the Month" to his students. My daughter and I had such a good time with it that I wanted to share it here.

Start with any 4 digit number where all 4 digits are different.

Sort the digits in descending order as your first number.

Sort the digits in ascending order as your second number.

Subtract the second number from the first number.

Repeat.

What happens?

For instance, consider the number: 1625

Sort the digits in descending order: 6521

Sort the digits in ascending order: 1256

Subtract: 6521-1256 = 5265

Repeat:

Sort the digits in descending order: 6552

Sort the digits in ascending order: 2556

Subtract: 6552-2556 = 3996

Repeat:

Subtract: 9963-3699 = 6264

Repeat:

Subtract: 6642-2466 = 4176

Repeat:

Subtract: 7641-1467 = 6174

Repeat:

Subtract: 7641-1467 = wait a second? That's the same as the last subtraction!

We started this problem just by picking some numbers like the one above and seeing what number we'd get. We quickly found that everything we tried converged to 6174. So we started trying to organize the pattern.

The first thing we noticed is that we made some mistakes in our subtraction as we were doing it without a calculator. I pointed out that problems that involve digits frequently also involve multiples of 9. And in fact our subtractions usually resulted in a multiple of 9. This is easy to check by adding the digits to see if they are a multiple of 9. It's not hard to prove that the result is always a multiple of 9. So any subtractions that weren't a multiple of 9 were wrong.

Then my daughter noticed a pattern. She tried 4321, 5432, 6543, 7654, 8765, 9876 as starting points. Sorting the digits and subtracting turns into 3087 for all of those numbers. Then she tried 5421, 6532, etc. Sorting the digits and subtracting turns into 4176 for all of those numbers.

This suggested we find some equivalence classes. Can we describe a set of numbers that will all get the same output? It was pretty easy to suggest that the sorted digits (a+x)(b+x)(c+x)(d+x) for a particular abcd but any x would form an equivalence class. When you subtract, the xs all cancel out and you have just abcd - dcba.

Once we had that equivalence class we could start to write out the possible values for abcd. We quickly saw a more general form of the class. Any pattern of sorted digits (a+x)(b+y)(c+y)(d+x) for a particular abcd but any x and y would form an equivalence class. When you subtract, both the xs and ys cancel out.

So that means we can figure out which equivalence class any number fits in pretty easily. Start with the original 1625. Sort the digits to 6521. Use the largest possible x = 1. Use the largest possible y = 2. That leaves us with 5300. 6521-1256 = 5300-0035. Each equivalence class will contain a number with two leading digits and two zeros.

Now we can make a table of all possible pairs of digits and figure out the next number from the operation for each pair. The table can easily include the cases where the digits aren't all different, although 1111, 2222, 3333, ..., 9999 become 0000 in one step.

From the table, you can also make a graph of how each equivalence class transforms to the next class. This graph can help you find the longest chains and how many steps any particular number will take.

Here's one of the longest possible chains:

4100 -> 4086 (8200) -> 8172 (7500) -> 7443 (4000) -> 3996 (6300) -> 6264 (4200) -> 4176 (6200) -> 6175

For each repeat, I listed out the actual result with its equivalence class in parentheses. There are several other classes with equally long chains.

If you look carefully, you can find some additional equivalence classes that narrow the problem down further.

I researched this problem and it is known as "Kaprekar's operation" after the mathematician who first published it. There's a nice write up with a bit more of the algebra at [https://plus.maths.org/content/mysterious-number-6174](https://plus.maths.org/content/mysterious-number-6174). This is a good general math blog, as long as you don't mind your math with an S at the end!