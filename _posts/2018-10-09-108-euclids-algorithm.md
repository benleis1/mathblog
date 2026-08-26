---
title: "10/8  Euclid's Algorithm"
date: 2018-10-09 20:06:00 +0000
tags:
  - euclidean algorithm
  - number theory
author: me
---

Today the four kids who were not present the first time all came so I decided to start with everyone reintroducing themselves to the group.  I had a few kids say "My mom signed me up but than I really like math club so I came back."  which made my day.

![]({{ site.baseurl }}/assets/img/108-euclids-algorithm/blogger_2a3a36a0.jpg)

I also wedged time in for the kids to give a campaign speech to run for club president and vice president. So far, I'm sure that I'm going to have them take charge of making recruitment posters for next season and I'm still brainstorming what other responsibilities I can delegate.  My dream would be to have kids run a day's session but I don't think that level of commitment and effort occurs until High School. The kids are much less cynical than me of course and take this very seriously.   There was a lot of whiteboards being turned into campaign posters and promises of candy bribes for votes as well as a request for an impeachment mechanism.

From there I returned to the puzzle from last session:

![]({{ site.baseurl }}/assets/img/108-euclids-algorithm/blogger_60f9796a.PNG)

![]({{ site.baseurl }}/assets/img/108-euclids-algorithm/blogger_b5e3336b.jpg)

![]({{ site.baseurl }}/assets/img/108-euclids-algorithm/blogger_5d8c67c4.jpg)

We didn't have time to review this as a group and I wanted to close the loop on the thinking involved here.  So I had everyone group up and spend 5 minutes continuing to reason about this.  I could tell at this point that several groups had reached some conclusions and it was a good place to start discussing collectively. For myself, I'm trying very consciously to elicit questions after each person volunteers an idea i.e. "Does anyone have a clarifying question for X or a followup etc."  in addition to just focusing on getting everyone to speak in front of the group.  Its very tempting to let one person jump to the answer and move on. So I just keep my goals in the back of my mind and resist those urges as best as I can.  It also lengthens these moments but I'm hoping that its going to  payoff over the year in richer talks as well emphasizing that we're interested in the reasons behind each problem not the answers themselves.

For the main section of the day after brainstorming I decided to focus on the [Euclidean Algorithm](https://en.wikipedia.org/wiki/Euclidean_algorithm). This was partly because it can be motivated out of the distributive law which is accessible to everyone, hopefully taught in a day and also new for most of the kids.

What  I also liked when thinking about it was the chance to integrate a small bit of math history:

"Euclid's Algorithm appears as the solution to the Proposition VII.2 in the Elements

Background:  The Elements is not just about GeometryEuclid: 4th -3rd century BC  (Alexandria) organized mathematics into its elements or pieces. 

Ptolemy 1st Soter, first king of Egypt after the death of Alexander the Great, personally sponsored Euclid, but found Euclid's seminal work, the *Elements*, too difficult to study, so he asked Euclid to show him an easier way to master it. According to the philosopher Proclus, Euclid famously quipped: "Sire, there is no royal road to geometry."

So I started with the background from above including the episode and quote. That let me build in a mini open ended discussion about what the kids thought Euclid meant and whether they agreed.

My main problem set source was taken from the PCMI sessions: [ http://projects.ias.edu/pcmi/hstp/sum2001/wg/number.theory/session04.pdf](http://projects.ias.edu/pcmi/hstp/sum2001/wg/number.theory/session04.pdf)

I could imagine several challenges with this starting point.

- The focus on Z_n in the first 5 questions while fun requires more background knowledge and doesn't directly connect to the Algorithm.  But given the limited time I thought skipping past this section would make sense.
- There is an assumption that everyone has learned the algorithm elsewhere. So I needed to supply that portion separately.
- I also really wanted the whole group to handle a lot of this beginning setup.

So I built a whiteboard discussion in at the start around the definition of GCD, how the kids currently went about finding it and why factoring is not easy when the numbers get big.   This involved a lot of questions for the kids and various examples.

Then we tackled the distributive law together. Again I asked the kids to give me examples and explain why it worked. I  like to stress going in both directions: i.e. factoring out and multiplying in.

Finally: we talked about how this applies to common factors and why the sum and then the difference of two numbers both still contain the GCD. From there, we could talk about the main part of the algorithm and break out for practice. Each group came up with some 3 digit numbers to test.

![]({{ site.baseurl }}/assets/img/108-euclids-algorithm/blogger_32f4469a.jpg)

The remainder of the time once everyone felt comfortable was spent on the worksheet starting at question 6.

Finally at the very end I interrupted everyone to explain the first problem of the week:

"I have an amazing psychic power.
 
First pick a polynomial in terms of one variable with positive coefficients for example   p(x) = 4x^3 + 5x + 3. 

Next choose an integer bigger than all the coefficients, and evaluate. so, for example, p(9)=26260.

Tell me only what you computed i.e. “p(9) evaluated to 26260” and nothing else. 

I'll then use my psychic powers to immediately tell you want the original polynomial is.
How am I doing this?"

I figured that a few kids would need help with the definition of a polynomial and coefficient which turned out to be true. Also the idea of saying p(x) as a name for the polynomial was a new piece of terminology for some.   Giving some examples of evaluating at a specific value proved useful. But most fun, the kids were suitably impressed when I demonstrated the "trick" and found their original polynomials so hopefully that motivates them to think about it over the week.