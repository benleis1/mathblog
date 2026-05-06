---
title: "Looking for a more elegant approach"
date: 2016-03-25 23:05:00 +0000
tags:
  - geometry
  - digression
author: me
---

![]({{ site.baseurl }}/assets/img/looking-for-a-more-elegant-approach/blogger_b1c793b1.jpg)

This is a continuation of my geometry problem solving posts. I spent the last few days thinking about the above problem from @five_triangles. This ends up serving as an example of a brute force approach versus a more elegant one.

My first step was to find that $\angle DBC$ is 45$^\circ$  and $\angle ABD$ is $15^\circ$ through a quick angle chase.  That immediately made me think of  trisecting $\angle DBC$ and  reflecting the triangle $\triangle$ BED across the segment $\overline{BD}$. This can be reflected two more times to produce this:

![]({{ site.baseurl }}/assets/img/looking-for-a-more-elegant-approach/blogger_6ea4cc5c.png)

Note: $\triangle ABH$ is half of the big $\triangle ABC$ and the desired ratio is at least 3:1 since there are 3 reflections of $\triangle EBD$ within $\triangle DBC$ plus some other bits.  

From here I added the parallel line GD to EO which makes a trapezoid and some similar triangles. I was hoping that the remaining similar triangles could be easily combined to form a multiple of EBD but while they all had the same altitude this wasn't the case.

I then experimented with the similar triangles starting from $\triangle{BEO}$  That almost worked I could find BGD and BDC in terms of  BEO.  Using the ratio between GD and EO I  could even break the trapezoid apart to find the remaining piece but was left with a  ratio   $\frac{\overline{GD}}{\overline{EO}}$ embedded in my expression. 

So I went back to the drawing board and started with the top $\triangle{AGD}$ which is 30-60-90.

1. Let AD =  x Its possible to then find DG,  and ultimately the entire side AC in terms of x.

2. AHC is also 30-60-90 and since you have AC. You can find AH and HC in terms of x.

3. OH is in a 45-45-90 triangle so it has the same length as HC which is known.

4. The smallest triangle at the the top AGI is also 30-60-90 and similar to AEO.  Its one edge AG is already expressed in terms of x as well and we know AO from the previous step (AO = AH - OH)

5. From that you can finally find GE using the similar triangles. 

6. Putting all of that together you have altitudes and bases for the two triangles all in terms of AD and it simplifies down to 1:4.

This is mechanical but fairly messy and has a lot of expression with radicals.  

Trig Approach

After looking at my first two ideas I didn't like the complexity and I felt the ratio could be visualized more cleanly i.e. something should be quartered.  So I actually asked my friend Dan to try the same problem.  Here's his clever idea which utilizes some trig to quickly find the altitudes and cleanly shows where 1/4 comes in.

Call the intersection point in the middle Q.

Draw QC.

BQC is a 45-degree right triangle.

So the height of DBC is QC which is also BQ.

Angle QBE is 15 degrees.

BE is BQ * cos 15.

Altitude from E to BD is BE * sin 15.

So altitude of triangle EBD is altitude of triangle DBC * cos 15 * sin 15 = altitude * ½ sin 30

Ratio of altitudes is 4, so ratio of areas is also 4.

Final Improved Version

![]({{ site.baseurl }}/assets/img/looking-for-a-more-elegant-approach/blogger_9d9a541a.png)

Playing with Dan's idea a bit more you can remove the need for trig.  

1. First note: $\triangle{EBD}$ and $\triangle{DBC}$ share a common base $\overline{BD}$.

2. Angle chase to find $\angle OBC$ is 45$^\circ$  and $\angle ABO$ is $15^\circ$.

3. Reflect $\overline{BO}$ and you get a right triangle BOC so $\overline{OC}$ is the altitude of $\triangle{DBC}$.

4. Drop another altitude $\overline{EG}$ for $\triangle{EBD}$ 

5. Now the trick is to find the ratio between the two altitudes. This is accomplished through following a series of isosceles triangles.

6. First extend $\overline{EO}$ to F. **[I experimented with this auxiliary line because the 2 overlapping 30-60-90 triangles were so useful in my first try. I thought I would directly use its side ratios but as soon as it was there all of the following observations were visible one after another.]** $\angle{EFC}$ is 150 so $\angle{FOC}$ is 15 and $\triangle{OFC}$ is isosceles.  Therefore $\overline{FC}$ = $\overline{OF}$.

7. Next angle chase again $\angle{DOF}$ is also 75 so $\triangle{ODF}$ is isosceles and

$\overline{DF}$ = $\overline{OF}$.

8. Then look at $\triangle{AOF}$ which is also isoscleses. So $\overline{AO}=\overline{OF}$

9. $\triangle{AEO}$ is a 30-60-90 so $\overline{EO}$ is 1/2 $\overline{AO}$

10. Its easy to verify then that $\triangle{OEG}$ and $\triangle{ODC}$ are similar 15-75-90 triangles.

11. Since  $\triangle{OEG}$  has a hypotenuse (EO) 1/4 of the hypotenuse of  $\triangle{ODC}$  (DC). The altitudes must be in the same ratio, and also the areas.