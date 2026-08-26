---
title: "Exponent Tower Redux"
date: 2018-05-30 03:19:00 +0000
tags:
  - euler totient
  - digression
  - number theory
author: me
---

I saw a different version of the tower of 7's problem in a book I'm reading on number theory. This is the mostly rambling thought process I've been going through:

Quick Review: What are the last 2 digits of  $ 7^{7^7} $ ?

My quick and dirty original solution:

- Make a table of the multiples of 7 and notice they cycle every 4 terms.
- So the problem reduces to figuring out the linear congruence $ x \equiv 7^7 \mod 4 $
- $ 7^7  \equiv 3^7 \equiv (-1)^7 \equiv -1 \equiv 3  \mod 4 $
-  So the answer is the last 2 digits of 7^3 or 43.

Comparison Technique:

1.  First compute the [totient function](https://en.wikipedia.org/wiki/Euler%27s_totient_function) for 100: $ \phi(100) = \phi(2^2)\phi(5^2) = (2^2 - 2^1)(5^2 - 5^1) = 40 $.

2. So everything cycles in 40.

3. Therefore if $ x \equiv 7^7 \mod 40 $ then  $ 7^{7^7} \equiv 7^x \mod 100 $ 

4. $7^7 = 7^4 \cdot 7^2 \cdot 7 \equiv 1 \cdot 9 \cdot 7 = 63 \equiv 23 \mod 40 $

5. Then compute $ 7^{23} \mod 100 $ using squaring of sevens i.e.  a table.

That didn't seem like an improvement to me but it got me thinking about 2 things:

- Does the totient function just bound the cycle length of  relatively prime numbers? 
- What's the relationship between it and the true cycle lengths?

Let's just look at mod 100 i.e. the last two digits of a number raised to various powers:

Some data:

Seed: 3 CycleLen: 20 CoSeed:97 CoCycleLen:20

Seed: 7 CycleLen: 4 CoSeed:93 CoCycleLen:4

Seed: 9 CycleLen: 10 CoSeed:91 CoCycleLen:10

Seed: 11 CycleLen: 10 CoSeed:89 CoCycleLen:10

Seed: 13 CycleLen: 20 CoSeed:87 CoCycleLen:20

Seed: 17 CycleLen: 20 CoSeed:83 CoCycleLen:20

Seed: 19 CycleLen: 10 CoSeed:81 CoCycleLen:5

Seed: 21 CycleLen: 5 CoSeed:79 CoCycleLen:10

Seed: 23 CycleLen: 20 CoSeed:77 CoCycleLen:20

Seed: 27 CycleLen: 20 CoSeed:73 CoCycleLen:20

Seed: 29 CycleLen: 10 CoSeed:71 CoCycleLen:10

Seed: 31 CycleLen: 10 CoSeed:69 CoCycleLen:10

Seed: 33 CycleLen: 20 CoSeed:67 CoCycleLen:20

Seed: 37 CycleLen: 20 CoSeed:63 CoCycleLen:20

Seed: 39 CycleLen: 10 CoSeed:61 CoCycleLen:5

Seed: 41 CycleLen: 5 CoSeed:59 CoCycleLen:10

Seed: 43 CycleLen: 4 CoSeed:57 CoCycleLen:4

Seed: 47 CycleLen: 20 CoSeed:53 CoCycleLen:20

Seed: 49 CycleLen: 2 CoSeed:51 CoCycleLen:2

You can see here despite the totient being 40 the actual max cycle length is 20 and by necessity all possible cycle lengths are factors of 40.

The mostly symmetric relation between a number n and its counterpart 100 - n is also apparent.

This follows from $ (p-n)^2 = p^2 - 2np + n^2 \equiv n^2 \mod 100 $ Which only directly affects the first term but the effect is noticeable.

Which has led me to: [https://en.wikipedia.org/wiki/Carmichael_function](https://en.wikipedia.org/wiki/Carmichael_function) which depends on LCM of the two sub-totient functions and gives:

$ \lambda(100) = 20 $

Its also interesting what happens as the modulus is varied:

7 is not nearly so "quick"

Mod 99

Seed: 2 CycleLen: 30 CoSeed:97 CoCycleLen:15

Seed: 4 CycleLen: 15 CoSeed:95 CoCycleLen:30

Seed: 5 CycleLen: 30 CoSeed:94 CoCycleLen:30

Seed: 7 CycleLen: 30 CoSeed:92 CoCycleLen:30

Seed: 8 CycleLen: 10 CoSeed:91 CoCycleLen:5

Seed: 10 CycleLen: 2 CoSeed:89 CoCycleLen:2

Seed: 13 CycleLen: 30 CoSeed:86 CoCycleLen:30

Seed: 14 CycleLen: 30 CoSeed:85 CoCycleLen:30

Seed: 16 CycleLen: 15 CoSeed:83 CoCycleLen:30

Seed: 17 CycleLen: 10 CoSeed:82 CoCycleLen:5

Seed: 19 CycleLen: 10 CoSeed:80 CoCycleLen:10

Seed: 20 CycleLen: 30 CoSeed:79 CoCycleLen:30

Seed: 23 CycleLen: 6 CoSeed:76 CoCycleLen:6

Seed: 25 CycleLen: 15 CoSeed:74 CoCycleLen:30

Seed: 26 CycleLen: 10 CoSeed:73 CoCycleLen:10

Seed: 28 CycleLen: 10 CoSeed:71 CoCycleLen:10

Seed: 29 CycleLen: 30 CoSeed:70 CoCycleLen:15

Seed: 31 CycleLen: 15 CoSeed:68 CoCycleLen:30

Seed: 32 CycleLen: 6 CoSeed:67 CoCycleLen:3

Seed: 34 CycleLen: 3 CoSeed:65 CoCycleLen:6

Seed: 35 CycleLen: 10 CoSeed:64 CoCycleLen:5

Seed: 37 CycleLen: 5 CoSeed:62 CoCycleLen:10

Seed: 38 CycleLen: 30 CoSeed:61 CoCycleLen:30

Seed: 40 CycleLen: 30 CoSeed:59 CoCycleLen:30

Seed: 41 CycleLen: 30 CoSeed:58 CoCycleLen:15

Seed: 43 CycleLen: 6 CoSeed:56 CoCycleLen:6

Seed: 46 CycleLen: 10 CoSeed:53 CoCycleLen:10

Seed: 47 CycleLen: 30 CoSeed:52 CoCycleLen:30

Seed: 49 CycleLen: 15 CoSeed:50 CoCycleLen:30

Seed: 50 CycleLen: 30 CoSeed:49 CoCycleLen:15

Seed: 52 CycleLen: 30 CoSeed:47 CoCycleLen:30

Seed: 53 CycleLen: 10 CoSeed:46 CoCycleLen:10

Seed: 56 CycleLen: 6 CoSeed:43 CoCycleLen:6

Seed: 58 CycleLen: 15 CoSeed:41 CoCycleLen:30

Seed: 59 CycleLen: 30 CoSeed:40 CoCycleLen:30

Seed: 61 CycleLen: 30 CoSeed:38 CoCycleLen:30

Seed: 62 CycleLen: 10 CoSeed:37 CoCycleLen:5

Seed: 64 CycleLen: 5 CoSeed:35 CoCycleLen:10

Seed: 65 CycleLen: 6 CoSeed:34 CoCycleLen:3

Seed: 67 CycleLen: 3 CoSeed:32 CoCycleLen:6

Seed: 68 CycleLen: 30 CoSeed:31 CoCycleLen:15

Seed: 70 CycleLen: 15 CoSeed:29 CoCycleLen:30

Seed: 71 CycleLen: 10 CoSeed:28 CoCycleLen:10

Seed: 73 CycleLen: 10 CoSeed:26 CoCycleLen:10

Seed: 74 CycleLen: 30 CoSeed:25 CoCycleLen:15

Seed: 76 CycleLen: 6 CoSeed:23 CoCycleLen:6

Seed: 79 CycleLen: 30 CoSeed:20 CoCycleLen:30

Seed: 80 CycleLen: 10 CoSeed:19 CoCycleLen:10

Seed: 82 CycleLen: 5 CoSeed:17 CoCycleLen:10

Seed: 83 CycleLen: 30 CoSeed:16 CoCycleLen:15

Seed: 85 CycleLen: 30 CoSeed:14 CoCycleLen:30

Seed: 86 CycleLen: 30 CoSeed:13 CoCycleLen:30

Seed: 89 CycleLen: 2 CoSeed:10 CoCycleLen:2

Seed: 91 CycleLen: 5 CoSeed:8 CoCycleLen:10

Seed: 92 CycleLen: 30 CoSeed:7 CoCycleLen:30

Seed: 94 CycleLen: 30 CoSeed:5 CoCycleLen:30

Seed: 95 CycleLen: 30 CoSeed:4 CoCycleLen:15

Seed: 97 CycleLen: 15 CoSeed:2 CoCycleLen:30

Seed: 98 CycleLen: 2 CoSeed:1 CoCycleLen:1

Mod 101

Seed: 2 CycleLen: 100 CoSeed:99 CoCycleLen:100

Seed: 3 CycleLen: 100 CoSeed:98 CoCycleLen:100

Seed: 4 CycleLen: 50 CoSeed:97 CoCycleLen:25

Seed: 5 CycleLen: 25 CoSeed:96 CoCycleLen:50

Seed: 6 CycleLen: 10 CoSeed:95 CoCycleLen:5

Seed: 7 CycleLen: 100 CoSeed:94 CoCycleLen:100

Seed: 8 CycleLen: 100 CoSeed:93 CoCycleLen:100

Seed: 9 CycleLen: 50 CoSeed:92 CoCycleLen:25

Seed: 10 CycleLen: 4 CoSeed:91 CoCycleLen:4

Seed: 11 CycleLen: 100 CoSeed:90 CoCycleLen:100

Seed: 12 CycleLen: 100 CoSeed:89 CoCycleLen:100

Seed: 13 CycleLen: 50 CoSeed:88 CoCycleLen:25

Seed: 14 CycleLen: 10 CoSeed:87 CoCycleLen:5

Seed: 15 CycleLen: 100 CoSeed:86 CoCycleLen:100

Seed: 16 CycleLen: 25 CoSeed:85 CoCycleLen:50

Seed: 17 CycleLen: 10 CoSeed:84 CoCycleLen:5

Seed: 18 CycleLen: 100 CoSeed:83 CoCycleLen:100

Seed: 19 CycleLen: 25 CoSeed:82 CoCycleLen:50

Seed: 20 CycleLen: 50 CoSeed:81 CoCycleLen:25

Seed: 21 CycleLen: 50 CoSeed:80 CoCycleLen:25

Seed: 22 CycleLen: 50 CoSeed:79 CoCycleLen:25

Seed: 23 CycleLen: 50 CoSeed:78 CoCycleLen:25

Seed: 24 CycleLen: 25 CoSeed:77 CoCycleLen:50

Seed: 25 CycleLen: 25 CoSeed:76 CoCycleLen:50

Seed: 26 CycleLen: 100 CoSeed:75 CoCycleLen:100

Seed: 27 CycleLen: 100 CoSeed:74 CoCycleLen:100

Seed: 28 CycleLen: 100 CoSeed:73 CoCycleLen:100

Seed: 29 CycleLen: 100 CoSeed:72 CoCycleLen:100

Seed: 30 CycleLen: 50 CoSeed:71 CoCycleLen:25

Seed: 31 CycleLen: 25 CoSeed:70 CoCycleLen:50

Seed: 32 CycleLen: 20 CoSeed:69 CoCycleLen:20

Seed: 33 CycleLen: 50 CoSeed:68 CoCycleLen:25

Seed: 34 CycleLen: 100 CoSeed:67 CoCycleLen:100

Seed: 35 CycleLen: 100 CoSeed:66 CoCycleLen:100

Seed: 36 CycleLen: 5 CoSeed:65 CoCycleLen:10

Seed: 37 CycleLen: 25 CoSeed:64 CoCycleLen:50

Seed: 38 CycleLen: 100 CoSeed:63 CoCycleLen:100

Seed: 39 CycleLen: 20 CoSeed:62 CoCycleLen:20

Seed: 40 CycleLen: 100 CoSeed:61 CoCycleLen:100

Seed: 41 CycleLen: 20 CoSeed:60 CoCycleLen:20

Seed: 42 CycleLen: 100 CoSeed:59 CoCycleLen:100

Seed: 43 CycleLen: 50 CoSeed:58 CoCycleLen:25

Seed: 44 CycleLen: 20 CoSeed:57 CoCycleLen:20

Seed: 45 CycleLen: 50 CoSeed:56 CoCycleLen:25

Seed: 46 CycleLen: 100 CoSeed:55 CoCycleLen:100

Seed: 47 CycleLen: 50 CoSeed:54 CoCycleLen:25

Seed: 48 CycleLen: 100 CoSeed:53 CoCycleLen:100

Seed: 49 CycleLen: 50 CoSeed:52 CoCycleLen:25

Seed: 50 CycleLen: 100 CoSeed:51 CoCycleLen:100

Seed: 51 CycleLen: 100 CoSeed:50 CoCycleLen:100

Seed: 52 CycleLen: 25 CoSeed:49 CoCycleLen:50

Seed: 53 CycleLen: 100 CoSeed:48 CoCycleLen:100

Seed: 54 CycleLen: 25 CoSeed:47 CoCycleLen:50

Seed: 55 CycleLen: 100 CoSeed:46 CoCycleLen:100

Seed: 56 CycleLen: 25 CoSeed:45 CoCycleLen:50

Seed: 57 CycleLen: 20 CoSeed:44 CoCycleLen:20

Seed: 58 CycleLen: 25 CoSeed:43 CoCycleLen:50

Seed: 59 CycleLen: 100 CoSeed:42 CoCycleLen:100

Seed: 60 CycleLen: 20 CoSeed:41 CoCycleLen:20

Seed: 61 CycleLen: 100 CoSeed:40 CoCycleLen:100

Seed: 62 CycleLen: 20 CoSeed:39 CoCycleLen:20

Seed: 63 CycleLen: 100 CoSeed:38 CoCycleLen:100

Seed: 64 CycleLen: 50 CoSeed:37 CoCycleLen:25

Seed: 65 CycleLen: 10 CoSeed:36 CoCycleLen:5

Seed: 66 CycleLen: 100 CoSeed:35 CoCycleLen:100

Seed: 67 CycleLen: 100 CoSeed:34 CoCycleLen:100

Seed: 68 CycleLen: 25 CoSeed:33 CoCycleLen:50

Seed: 69 CycleLen: 20 CoSeed:32 CoCycleLen:20

Seed: 70 CycleLen: 50 CoSeed:31 CoCycleLen:25

Seed: 71 CycleLen: 25 CoSeed:30 CoCycleLen:50

Seed: 72 CycleLen: 100 CoSeed:29 CoCycleLen:100

Seed: 73 CycleLen: 100 CoSeed:28 CoCycleLen:100

Seed: 74 CycleLen: 100 CoSeed:27 CoCycleLen:100

Seed: 75 CycleLen: 100 CoSeed:26 CoCycleLen:100

Seed: 76 CycleLen: 50 CoSeed:25 CoCycleLen:25

Seed: 77 CycleLen: 50 CoSeed:24 CoCycleLen:25

Seed: 78 CycleLen: 25 CoSeed:23 CoCycleLen:50

Seed: 79 CycleLen: 25 CoSeed:22 CoCycleLen:50

Seed: 80 CycleLen: 25 CoSeed:21 CoCycleLen:50

Seed: 81 CycleLen: 25 CoSeed:20 CoCycleLen:50

Seed: 82 CycleLen: 50 CoSeed:19 CoCycleLen:25

Seed: 83 CycleLen: 100 CoSeed:18 CoCycleLen:100

Seed: 84 CycleLen: 5 CoSeed:17 CoCycleLen:10

Seed: 85 CycleLen: 50 CoSeed:16 CoCycleLen:25

Seed: 86 CycleLen: 100 CoSeed:15 CoCycleLen:100

Seed: 87 CycleLen: 5 CoSeed:14 CoCycleLen:10

Seed: 88 CycleLen: 25 CoSeed:13 CoCycleLen:50

Seed: 89 CycleLen: 100 CoSeed:12 CoCycleLen:100

Seed: 90 CycleLen: 100 CoSeed:11 CoCycleLen:100

Seed: 91 CycleLen: 4 CoSeed:10 CoCycleLen:4

Seed: 92 CycleLen: 25 CoSeed:9 CoCycleLen:50

Seed: 93 CycleLen: 100 CoSeed:8 CoCycleLen:100

Seed: 94 CycleLen: 100 CoSeed:7 CoCycleLen:100

Seed: 95 CycleLen: 5 CoSeed:6 CoCycleLen:10

Seed: 96 CycleLen: 50 CoSeed:5 CoCycleLen:25

Seed: 97 CycleLen: 25 CoSeed:4 CoCycleLen:50

Seed: 98 CycleLen: 100 CoSeed:3 CoCycleLen:100

Seed: 99 CycleLen: 100 CoSeed:2 CoCycleLen:100

Seed: 100 CycleLen: 2 CoSeed:1 CoCycleLen:1

Another digression:

The odd numbers (often/always) cycle through each other for the last digit when raised to a power mod 10^n and if relatively prime we need to get to 1 before the cycle restarts so once you reach a number ending in one you can just start successively squaring it.   [Is this generally true? [no]]

And that's about where I'm at currently.