---
title: "A quick note on the MathCounts final question"
date: 2016-05-16 18:09:00 +0000
tags:
  - math club ideas
  - brainstorming
author: me
---

[http://q13fox.com/2016/05/09/seattle-13-year-old-wins-national-math-bee/](http://q13fox.com/2016/05/09/seattle-13-year-old-wins-national-math-bee/)

"Competition officials said in a news release the 13-year-old won the final round by answering the question, “What is the remainder when 999,999,999 is divided by 32?”

Wan gave the correct answer of 31 in just under seven seconds."

I heard about the MathCounts results a week ago and my first reaction to this  question was "Huh doesn't seem like a very deep question, its so computation focused."  My second thought was I wonder how long just doing the long division would really take and then I immediately followed that up with  I could type this into python (or the google address bar nowadays) and find the answer very quickly.

![]({{ site.baseurl }}/assets/img/a-quick-note-on-the-mathcounts-final-question/blogger_af8aaec2.png)

However, I thought about it again while trying to fall asleep last night and there is actually a lovely (and accessible) piece of number theory contained within it.  This time, I started by musing  "How did he do it so quickly."  The easiest way I thought of was to build up a divisibility rule for 32.  Since 32 is 2^5 multiplying it by 5^5 produces a nice power of 10. But I was in bed so I actually went 32, 160, 800, 4000, 20000, 100000.  This means, you can ignore all the digits past the 5th one i.e. this is the same as 99999 mod 32.  I then thought let's subtract the largest multiple of 20000 to get 19999 left over. Then lets take the largest multiple of 4000 to get 3999 leftover. At which point I noticed the pattern (mind you I didn't have any paper).

99999  remainder for 100000

19999  remainder for 20000

3999 remainder for 4000

799 remainder for 800

159 remainder for 160

What's occuring here is that 999,999,999 is 1 less than 1,000,000,000 which is divisible by  32 based on my first observation since its a multiple of 100,000.  So clearly 999,999,999 mod 32 is -1 or adding 32 to it the remainder must be 31. This basic fact was showing up in all the partial sums as well.  In fact, with any pure power of 2 a sufficiently large number made only of 9's will have this property! 999,999,999 mod 64 is 63, 999,999,999 mod 16 is 15 etc.   So I've completely changed my mind, I think this will make a fun white board group exercise where the kids can look for patterns to solve the problem an easier way. (Maybe I'll even show a video snippet of the Math Counts finale)  Oh and congratulations to Wan who still totally creamed me.