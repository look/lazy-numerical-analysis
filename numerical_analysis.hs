import Prelude hiding (sqrt)

-- Compute the next estimate of the square root of n given the previous estimate
next n x = (x + n/x)/2

-- Given a sequence of converging estimates, return the first estimate within epsilon of the previous estimate
limit epsilon (x:y:ys) =
  if abs (x - y) <= epsilon then
    y
  else
    limit epsilon (y:ys)

epsilon = 0.0001

-- Return an estimate of the square root of n
sqrt n = limit epsilon (iterate (next n) 1.0)

-- Compute the derivative of f at x, re-using limit and iterate
-- See:
-- https://www.csee.umbc.edu/courses/331/fall10/resources/papers/whyfp.pdf
-- https://youtu.be/Z35Tt87pIpg?t=39m
deriv f x =
  limit epsilon (map slope (iterate (/2) 1.0))
  where slope h = (f (x+h) - f x) / h
