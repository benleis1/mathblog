---
title: "New Beginnings"
date: 2026-04-29
tags: [blogging]
author: me
math: false
image:
  path: "{{ site.baseurl }}/assets/img/2026-04-29/addme.png"
---
## I'm back

![Flower in the snow]({{ site.baseurl }}/assets/img/2026-04-29/flower.png)

It's been a long 3 years. In the course of Covid and life changes, I took a hiatus from my the old blog site and in the interim it broke down. But the itch to post math related posts has been growing along with the desire to migrate off of blogger and onto to a more open source platform.

## Math Updates

I've switched my focus for the last 2 years and am now leading classes at [HMA](https://www.huskymath.org/). This has been fun because in this format, I have a block of kids who are following a curriculum with homework and unlike in a math circle, its appropriate to have a sequence that builds on itself. The kids are a mixture of 7th to 10th graders currently and room sizes are around 15 kids with me and an undergraduate or graduate IA. Currently I'm leading a Algebra block and assisting on a Counting Theory one. I'm thinking a lot about curriculum sequences as I've become acquainted with IDEA math, our textbook.   You can see my official bio here: [Bio](https://www.huskymath.org/staff#h.nb3a3f61ey69)

As usual there is a bit of the normal tension to whether I think of myself as a *teacher*.  Despite being a volunteer position 3 hours a week, the format is not much different than any other math classroom. I prefer the terms "leading a room" or sometimes "instructor" to avoid misconstruing the work.


## Blog Migration

As I mentioned above, this time around I wanted more control. Blogspot was on life support under google and had basically no tech support and the configuration was what it was. I also wanted to write things in markdown rather than a proprietary markup language so that I wasn't as tightly bound to a platform. 

In my first attempt, I took a look at hugo but wasn't able to easily get it up and running. The second time around, I decided to try out jekyll instead given this [post](https://medium.com/coffee-in-a-klein-bottle/creating-a-mathematics-blog-with-jekyll-78cdee0339f3) .  With some minor work to get ruby installed on my Mac that required some digging around, the basic instructions worked fairly well and my test posts were working.  Deployment on github also was smooth. 

I then discovered that jekyll themes are not seamlessly interchangeable.  My sample was setup on the basic, minimal theme and  I wanted to try out chirpy which seemed promising based on web research. That was most easily done by just starting from scratch with a starter template on github. This also required changing to github actions for deployment but once that was understood the process again was smooth enough. What I did a bit differently next was leverage claude to munge the config files directly rather than the starter pack. After twiddling things around I again was up but the UI wasn't exactly what I wanted. It took some work to get tags going, turn off categories, make the summaries include a picture etc.  During this process, I became a bit more familiar with jekyll and realized chirpy wasn't as flexible as I would have liked and I was cloning off various configuration elements to customize. I also couldn't get it to present the view I wanted: a list of full or mostly full blog posts rather than summaries on the home page. 

So I researched again and arrived at the [minimal mistakes theme](https://mmistakes.github.io/minimal-mistakes). The docs for this one were more detailed than chirpy and it had more accessible tuning knobs built in.  I used claude again to migrate the main configuration. Then began the slog of exporting all the blog entries from google and converting them over.  Among other things I had to:

* Remove mathjax and css headers
* Fix up the tags and get them into the front matter
* Fix up the images and properly organize them under assets.
* Change all mathjax inline separators to $ which was more natural for jekyll's built in mathjax support.
* Fiddle with image scaling.
* Tinker with the amount of paragraphs to include in the archive summaries. I'm still not completely happy with where this stands.

## Things left to do
I still have to manually confirm the edits on a bunch of the older posts and fix up anything that looks broken. Also I have learned that it was a mistake to embed twitter links like I did for a period of a time. Many of those have broken over time. Moral of the story: keep a local copy of images instead if you want more permanence. Its possible I can find these on the wayback machine and I'll have to test and try for that.

I also want to improve my local editing setup. I currently use emacs, in markdown mode. I need to set up a template for the front matter to save some time and also see if I can find a way for it to inline display images. That's currently broken by the format that uses a template {site.baseurl} rather than a full path.
