---
title: "1/17 Graphs and Paths"
date: 2018-01-19 19:05:00 +0000
tags:
  - graph theory
author: me
---

This week I saw a numberphile video with a fairly charming problem that inspired me:

Can you find a way to arrange the numbers 1 through 15 in sequence such that every pair sums to a perfect square?

I decided I wanted to do a graph theory day around this.  This goes well on a whiteboard so I had all the kids work on it for about 10-12 minutes. Most found a solution faster than I expected. In retrospect this seems more difficult than it really is since there are only four square sums to consider 4,9,16 and 25 and its clear  there are lots of pairs that sum to 25 1 + 24, 2 + 23 etc and very few that sum to 9: 1 + 8.  To keep pacing on target I had groups that finished early try adding numbers on. I also asked the kids to consider why was this happening at all.

[**If I repeated I definitely would stress this question: Is it expected that this is possible and why or why not?  What patterns related to the square sums affect the likelyhood?]**

After stretching to allow most kids to find the solution we had a group discussion. No one had considered this in terms of graphs so after all the kids were done explaining I showed Matt Parker's solution. This was a good bridge to do a quick discussion about what is a graph, what is an edge, node and degree.

Next I introduced the classic Bridges of Konigsberg  [problem](https://en.wikipedia.org/wiki/Seven_Bridges_of_K%C3%B6nigsberg).

!!![](https://upload.wikimedia.org/wikipedia/commons/5/5d/Konigsberg_bridges.png)

This was a risk because I assumed some kids had seen it before. So I just outright asked who already had worked on it at the beginning. Interestingly most hadn't so I had everyone satisfy themselves like the townspeople that they couldn't find a path for a few minutes. Then we had a discussion about whether there is a way to prove its impossible.  No one made the jump to counting the degree of the nodes. So I talked through Euler's logic.  I think this could be broken apart more formally by asking the kids to create the graph equivalent themselves and then creating other graphs, classifying them and looking for patterns.

From there I had less luck creating the problem sequence. So I went with a few problem sets from the chapter on graphs in Jacobs "Mathematics a Human Endeavor".  I liked  the problems in the sets but I knew from experience the format was less than ideal. So I gave a packet to each group and had them focus on finding their favorite problem to show to the group at the next break.  By circulating among groups I was mostly able to keep forward progress going through questions but its hard work.   I'm continually tempted to do a deep dive on a topic but I'm usually still better off creating a coherent problem set stream that come in a few chunks on the whiteboard with discussion interleaved.

Of the set, there was a Classic Hamiltonian Path problem (find the loop that visits each node below):

!!![](https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Hamiltonian_path.svg/220px-Hamiltonian_path.svg.png)

That  I think works well and another maze problem that I would probably break out.

So overall I think this day was decent but with one or two more Euler/Hamiltonian problems added on (and I'll keep my eyes out for them) I think this could be really tightened.

Problem of the Week:

I'm feeling the AMC10 problems more recently so I went with this probability one:

[https://artofproblemsolving.com/wiki/index.php?title=2012_AMC_10A_Problems/Problem_20#Problem](https://artofproblemsolving.com/wiki/index.php?title=2012_AMC_10A_Problems/Problem_20#Problem)

For the future:

[https://plus.maths.org/content/graphs-and-networks](https://plus.maths.org/content/graphs-and-networks)