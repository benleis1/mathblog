---
title: "Pascal's Determinant"
date: 2021-04-26 20:02:00 +0000
tags:
  - matrix
  - pascal's triangle
  - linear algebra
author: me
---

![]({{ site.baseurl }}/assets/img/pascals-determinant/blogger_538c255b.png)

Tamas Gorbe posted the preceding tweet a few days ago and it caught my attention for two reasons. First, I've been doing a lot of linear algebra recently anyway and secondly Timothy Gowers posted a video of his problem solving process while trying to make sense of this mat

Before following along, I always find its useful to take a crack at solving a problem like this on one's own. Even if you don't fully unwind what's going on, the attempt itself makes seeing a solution more understandable. So this is
the process I followed.

A few thoughts almost immediately came to mind:

1. I wasn't go to get much mileage out of using minors to calculate the
determinant. They were too unaligned with Pascal's Triangle properties and
didn't really seem to help much for building any kind of induction.

2. Instead I wanted to focus on determinant properties that aligned better
i.e. row operations like addition of two rows.

3. Finally I wonder if you could glom onto anything from the n x n case to go
inductively to n + 1 x n +1.

<div class=boxed markdown=1>
Determinant properties

1.  $ \det \begin{bmatrix} I  \end{bmatrix} = 1 $
2. $ \det \begin{bmatrix}a+c&b+d&...\\\\ c & d & ... \\\\ ... & ... & ...\\\\ \end{bmatrix} =  \det \begin{bmatrix}a & b &...\\\\c & d & ... \\\\ ... \\\\ \end{bmatrix} $

3. $ \det \begin{bmatrix}a_1 + a_2 & b_1 + b_2 & ...\\\\c & d & ... \\\\ ... \\\\ \end{bmatrix} =  \det \begin{bmatrix}a_1 & b_1 & ...\\\\c & d & ... \\\\ ... \\\\ \end{bmatrix} + \det \begin{bmatrix}a_2 & b_2 & ...\\\\c & d & ... \\\\ ... \\\\ \end{bmatrix} $

</div><p/>

I then started by working out a few determinants by diagonalizing (i.e. once a matrix is in triangular form, the determinant is the product of the diagonal) My hope/strong instincts was that they all reduced to a diagonal of 1s and not some odd set of rational numbers that multiplied out to 1 or a set of 1s and -1s. Since all the entries were integers its easy enough to prove that the first case is impossible and the second can be further reduced to just 1s but I also wanted to watch what happened to the rest of the matrix.

Sure enough the 2x2, 3x3 and 4x4 cases all reduced nicely and I was satisfied
that was a reasonable assumption to make

$$ \det \begin{bmatrix}1 & 1\\\\1 & 2\\\\ \end{bmatrix} = \det
\begin{bmatrix}1 & 1\\\\0 & 1\\\\ \end{bmatrix} $$

$$ \det \begin{bmatrix}1 & 1 & 1\\\\1 & 2 & 3\\\\1 & 3 &
  6  \\\\ \end{bmatrix} = \det \begin{bmatrix}1 & 1 & 1\\\\0 & 1
  & 2\\\\0 & 0 & 1 \\\\ \end{bmatrix} $$


$$ \det \begin{bmatrix}1 & 1 & 1 & 1\\\\1 & 2 & 3 &
      4\\\\1 & 3 & 6 & 10\\\\1 & 4 & 10 & 20  \\\\
      \end{bmatrix} = \det \begin{bmatrix}1 & 1 & 1 & 1 \\\\0 & 1
      & 2 & 3\\\\0 & 0 & 1 & 3\\\\0 & 0 & 0 &1\\\\
      \end{bmatrix} $$


$$ \det \begin{bmatrix}1 & 1 & 1 & 1 & 1\\\\1 & 2 &
      3 & 4 & 5\\\\1 & 3 & 6 & 10 & 15\\\\1 & 4 & 10
      & 20 & 35  \\\\  1 & 5 & 15 & 35 &
      70  \\\\  \end{bmatrix} = \det \begin{bmatrix}1 & 1 & 1
      & 1 & 1 \\\\0 & 1 & 2 & 3 & 4\\\\0 & 0 & 1
      & 3 & 6\\\\0 & 0 & 0 &1 & 4\\\\  0 & 0 &
      0 & 0 & 1 \\\\ \end{bmatrix} $$


(I didn't see it immediately at this point - but there is a very distinct
      pattern going on with the upper triangles)


At this point I decided to focus on the Pascal's Triangle property that each cell in the matrix is the sum of the cell above it and to the left

![]({{ site.baseurl }}/assets/img/pascals-determinant/blogger_fb71b870.jpg)



So I then decided to reverse the process by subtracting the 1st row from every other row and a few other permutations of this.   What I kept tripping on was going from the top down doesn't work for reversing things.


What's better is to go bottom up:  Example for each row starting in the bottom of the 5x5 the result after subtracting the row above it:


 $$ \det \begin{bmatrix}1 & 1 & 1 & 1 & 1\\\\1 & 2 & 3 & 4 & 5\\\\1 & 3 & 6 & 10 & 15\\\\1 & 4 &
  10 & 20 & 35  \\\\  1 & 5 & 15 & 35 & 70
  \\\\  \end{bmatrix} = \det  \begin{bmatrix}1 & 1 & 1 & 1
  & 1\\\\0 &1 & 2 & 3 & 4\\\\0 & 1 & 3 & 6 &
  10\\\\0 & 1 & 4 & 10 & 20 \\\\ 0 &1 & 5 & 15 &
  35\\\\  \end{bmatrix}  $$

I actually thought a bit about minors at this point since the entire left
column is almost entirely zeroes. And there also was an interesting pattern
with the sub matrices along the diagonal all having determinants of 1 that I
stared at a bit but I couldn't quite figure a way to use them. And then I
realized the pattern I ended up utilizing.  Since each entry is the sum
of  the entry above and to the left of it after subtracting the upper
row, you're left with just the left elements in each row.

In other words, the result is a rightward shift of the entire matrix with zeros showing up on the left hand side.

So for any arbitrary size of the Pascal matrix, this process can be
repeated.  Each iteration you only subtract up to the topmost column that
isn't diagonalized yet (1st time row n to row 2, then row n to row 3
etc.) shifting all the entries until the matrix is in upper triangular
form with only 1's in the diagonal!  At this point the informal proof is done.

One more interesting property via my coworker Dan:  if you do a full LU decomposition of the matrix you will find:


$$  \begin{bmatrix}1 & 1 & 1 & 1 & 1\\\\1 & 2 & 3 & 4 & 5\\\\1 & 3 & 6 & 10 & 15\\\\1 & 4 & 10 & 20 & 35  \\\\  1 & 5 & 15 & 35 & 70  \\\\  \end{bmatrix}   = \begin{bmatrix}1 & 0 & 0 & 0 & 0 \\\\1 & 1 &  0& 0 & 0\\\\1 & 2 & 1 & 0 & 0\\\\1 & 3 & 3 &1 & 0\\\\  1 & 4 & 6 & 4 & 1 \\\\ \end{bmatrix} \cdot     \begin{bmatrix}1 & 1 & 1 & 1 & 1 \\\\0 & 1 & 2 & 3 & 4\\\\0 & 0 & 1 & 3 & 6\\\\0 & 0 & 0 &1 & 4\\\\  0 & 0 & 0 & 0 & 1 \\\\ \end{bmatrix}  $$

Thinking about it a bit more, the determinant property is not very dependent
on the state of the upper triangle.  Conjecture: You could actually put arbitrary
values in there repeat the generation process and end up with multiple other
matrices with determinants of 1.
