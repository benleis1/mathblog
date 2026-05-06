---
title: "4/1 I put a Hex on You"
date: 2019-04-05 21:29:00 +0000
tags:
  - Machine Learning
  - hexapawn
author: me
---

In the lead up to this week I had been debating whether to participate in the [https://purplecomet.org/](https://purplecomet.org/) contest. The start was a little too close to when we had done our last MOEMS session and I wanted to focus elsewhere but the kids were all excited when I surveyed them about it.   However, I was looking at the dates more closely over the weekend and I realized it ran from  this Tuesday  through next  Friday.  That was very unfortunate since all of next week is Spring Break and we meet on Mondays.  So officially participating was out of the question. I do plan to download the questions and use them in an unofficial version sometime later this year.

Then I read about a fascinating Machine Learning experiment, [HexaPawn](https://en.wikipedia.org/wiki/Hexapawn), invented by Martin Gardner back in the 70's.  I also was reminded of a famous Martin Gardner April Fool's hoax from 1975 that would work well as an intro and the day started to take shape.

To start, I checked how many kids knew of Martin Gardner (a few have seen some of his puzzle books) Then I briefly talked about his career and read the following excerpt from the famous article along with showing everyone the map. (I left this around for kids to play with but it wasn't our primary focus - although it easily could have been)

[https://blogs.scientificamerican.com/guest-blog/the-top-10-martin-gardner-scientific-american-articles/](https://blogs.scientificamerican.com/guest-blog/the-top-10-martin-gardner-scientific-american-articles/)

"As a public service, I shall comment briefly on six major discoveries of 1974 that for one reason or another were inadequately reported to both the scientific community and the public at large. The most sensational of last year's discoveries in pure mathematics was surely the finding of a counterexample to the notorious four-color-map conjecture. That theorem, as all readers of this department must know, is that four colors are both necessary and sufficient for coloring all planar maps so that no two regions with a common boundary are the same color. It is easy to construct maps that require only four colors, and topologists long ago proved that five colors are enough to color any map. Closing the gap, however, had eluded the greatest minds in mathematics. Most mathematicians have believed that the four-color theorem is true and that eventually it would be established. A few suggested it might be Godel-undecidable. ] H.S.M. Coxeter, a geometer at the University of Toronto, stood almost alone in believing that the conjecture is false.

Coxeter's insight has now been vindicated. In November 1974 William McGregor, a graph theorist of Wappingers Falls, N.Y., constructed a map of 110 regions that cannot be colored with fewer than five colors. McGregor's technical report will appear in 1978 in the *Journal of Combinatorial Theory*, Series B."

!![](https://mathnexus.wwu.edu/mathpix/graph4color.gif) 

Next I brought a set of craft beads,  chess board printouts.  color versions of the state machine from: 

[http://ai.aeortiz.com/2017/07/10/machine-learning-with-hexapawn/](http://ai.aeortiz.com/2017/07/10/machine-learning-with-hexapawn/)  and some D&D 12 and 4 sided dice.

We started with going over the rules and playing games against each other and then after about 5 minutes when the rules seemed understood we started the ML section in earnest.

![]({{ site.baseurl }}/assets/img/41-i-put-a-hex-on-you/blogger_f7b3d748.jpg)

![]({{ site.baseurl }}/assets/img/41-i-put-a-hex-on-you/blogger_812ca6c5.jpg)

![]({{ site.baseurl }}/assets/img/41-i-put-a-hex-on-you/blogger_f489f7a4.jpg)

One improvement I might do if repeating is to blowup/expand the state machine so it would be a little bit easier to manage but it still worked even at this size.  Watching the kids work through the iterations was fun and we did arrive at several machines that had learned enough to always draw or win.

To close things out I included this video on the closely related MENACE tic-tac-toe ML machine.  Unfortunately this one has too many states to easily repro on the fly but it works really well after you've spent time on the simpler model.

That  took up the rest of the hour which is a bit of a shame since I had the final thematically linked game of hex   See:[https://www.maths.ed.ac.uk/~csangwin/hex/index.html](https://www.maths.ed.ac.uk/~csangwin/hex/index.html)  in my back pocket. (I mostly knew we wouldn't reach this point even from the offset)