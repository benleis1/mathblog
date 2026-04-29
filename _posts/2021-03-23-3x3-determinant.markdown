---
title: "3x3 Determinant "
date: 2021-03-23 19:55:00 +0000
tags:
  - linear algebra
author: me
---

There are definitely more general and less messy ways to derive the 3x3 matrix
  determinant (breaking it apart using the linearity property and finding the 6 determinants left that are non-zero, simplifying ...)  but its interesting to do it once via diagonalizing and confirm the equivalence:

  
  \( \det \begin{bmatrix}a & b & c\\d & e & f\\g & h &
  i\\\end{bmatrix}  = a \cdot \det \begin{bmatrix}e & f \\ h &
  i\\\end{bmatrix}  - b \cdot \det \begin{bmatrix}d & f \\ g &
  i\\\end{bmatrix}  + c \cdot \det \begin{bmatrix}d & e \\ g &
  h\\\end{bmatrix}  \)
  

  First assume the matrix is linearly independent and all entries are nonzero so
  we not have to do row exchanges. Those cases can all be handled but I'm going
  to keep to the general case here.

  First subtract a  scaled version of row 1 from the other two in order to setup
  the first column.

  
    $ \det \begin{bmatrix}a & b & c\\d & e & f\\g & h &
    i\\ \end{bmatrix} = \det \begin{bmatrix}a & b & c\\0 & e -
    \dfrac{bd}{a} & f - \dfrac{cd}{a}\\0 & h - \dfrac{cd}{a} & i -
    \dfrac{cg}{a}\\ \end{bmatrix} $ 

  

  Next subtract a scaled version of row 2 from the row 3 to setup the second
    column

  

  $ \det \begin{bmatrix}a & b & c\\0 & e - \dfrac{bd}{a} & f -
  \dfrac{cd}{a}\\0 & h - \dfrac{cd}{a} & i - \dfrac{cg}{a}\\
  \end{bmatrix} =  \det \begin{bmatrix}a & b & c\\0 & e -
  \dfrac{bd}{a} & f - \dfrac{cd}{a}\\0 & 0 & i - \dfrac{cg}{a} -
  \dfrac{\left(f - \dfrac{cd}{a}\right)\left(h - \dfrac{bg}{a}\right)}{e -
  \dfrac{bd}{a}}  \\ \end{bmatrix} $

  Back substitute to remove the upper triangle entries and you get

  $  \det \begin{bmatrix}a & b & c\\0 & e - \dfrac{bd}{a} &
  f - \dfrac{cd}{a}\\0 & 0 & i - \dfrac{cg}{a} - \dfrac{\left(f -
  \dfrac{cd}{a}\right)\left(h - \dfrac{bg}{a}\right)}{e - \dfrac{bd}{a}} 
  \\ \end{bmatrix} =  \det \begin{bmatrix}a & 0 & 0\\0 & e
  - \dfrac{bd}{a} & 0\\0 & 0 & i - \dfrac{cg}{a} - \dfrac{\left(f -
  \dfrac{cd}{a}\right)\left(h - \dfrac{bg}{a}\right)}{e - \dfrac{bd}{a}} 
  \\ \end{bmatrix}   $

  The determinant of a diagonal matrix is just the product of the diagonal
  entries so

  

  $ \det \begin{bmatrix}a & b & c\\d & e & f\\g & h &
  i\\\end{bmatrix}  =  a \cdot  \left( e - \dfrac{bd}{a} \right)   \cdot  \left(  i - \dfrac{cg}{a} -  \dfrac{\left(f - \dfrac{cd}{a}\right)\left(h - \dfrac{bg}{a}\right)}{e - \dfrac{bd}{a}} \right )  $
This looks  a bit messy but we'll distribute the a into the following term 
$ \det \begin{bmatrix}a & b & c\\d & e & f\\g & h & i\\\end{bmatrix}  =  \left( ae -  bd \right)   \cdot  \left(  i - \dfrac{cg}{a} -  \dfrac{\left(f - \dfrac{cd}{a}\right)\left(h - \dfrac{bg}{a}\right)}{e - \dfrac{bd}{a}} \right )  $
And simplify last term a bit:
$ \det \begin{bmatrix}a & b & c\\d & e & f\\g & h & i\\\end{bmatrix}  =  \left( ae -  bd \right)   \cdot  \left( i - \dfrac{cg}{a} -  \dfrac{(af - cd)(ah - bg)}{a \cdot (ae - bd)} \right)  $
Next combine some fractions
$ \det \begin{bmatrix}a & b & c\\d & e & f\\g & h & i\\\end{bmatrix}  =  \left( ae -  bd \right)   \cdot  \left( i -  \dfrac{aceg - bcgd + (af - cd)(ah - bg)}{a \cdot (ae - bd)} \right) $
$\det \begin{bmatrix}a & b & c\\d & e & f\\g & h & i\\\end{bmatrix}  =   \left( ae -  bd \right)   \cdot  \left( i -  \dfrac{aceg - \mathbf{bcgd} + a^2fh - abfg - acdh + \bf{bcdg}}{a \cdot (ae - bd)} \right)$
Fortunately the bcdg terms cancel out which are the only ones without an a in them
$\det \begin{bmatrix}a & b & c\\d & e & f\\g & h & i\\\end{bmatrix}  =   \left( ae -  bd \right)   \cdot  \left( i -  \dfrac{aceg + a^2fh - abfg - acdh}{a \cdot (ae - bd)} \right)$
$\det \begin{bmatrix}a & b & c\\d & e & f\\g & h & i\\\end{bmatrix}  =   \left( ae -  bd \right)   \cdot  \left( i -  \dfrac{ceg + afh - bfg - cdh}{ae - bd} \right)$
And there's a nice cancellation on the denominator ae-bd to get
$\det \begin{bmatrix}a & b & c\\d & e & f\\g & h & i\\\end{bmatrix}  =    aei   - bdi  - ceg - afh + bfg  +cdh$
Now we'll just rearrange a bit:
$\det \begin{bmatrix}a & b & c\\d & e & f\\g & h & i\\\end{bmatrix}  =    aei  -afh  - (bdi - bfg)  + cdh - ceg$
And the desired result falls out:
$aei  -afh  - (bdi - bfg)  + cdh - ceg =  a(ei-fh) - b(di - fg) + c(dh - eg)$
$a(ei-fh) - b(di - fg) + c(dh - eg) = a \cdot \det \begin{bmatrix}e & f \\ h & i\\\end{bmatrix}  - b \cdot \det \begin{bmatrix}d & f \\ g & i\\\end{bmatrix}  + c \cdot \det \begin{bmatrix}d & e \\ g & h\\\end{bmatrix}   $