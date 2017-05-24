# Lazy Numerical Analysis

This takes Haskell code by [John Hughes](https://en.wikipedia.org/wiki/John_Hughes_(computer_scientist)) and translates it to Ruby to play around with using infinite sequences in an eagerly evaluated language. It is the companion code for a [blog post on using infinite sequences in Haskell and Ruby](http://www.recursion.org/2017/5/24/exploring-infinite-sequences).

## Running the code

For Ruby, you need Ruby 2.0 or greater:

```
$ irb
require_relative 'numerical_analysis'
sqrt 1000
# => 31.622776601684336
```

I used Stack to install Haskell. Then you can run:

```
$ stack ghci
:load numerical_analysis.hs
*Main> sqrt 1000
31.622776601684336
*Main> deriv (**2) 5
10.00006103515625
```

## Futher reading

* [Why Functional Programming Matters](https://www.csee.umbc.edu/courses/331/fall10/resources/papers/whyfp.pdf)
* [Modular Code and Lazy Evaluation in Haskell](https://hackhands.com/modular-code-lazy-evaluation-haskell/)
* [Infinite Sequences in Ruby](https://rossta.net/blog/infinite-sequences-in-ruby.html)
* [Exploring infinite sequences](http://www.recursion.org/2017/5/24/exploring-infinite-sequences)
