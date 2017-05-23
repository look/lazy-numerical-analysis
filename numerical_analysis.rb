# The interative method is "indivisible". The estimation algorithm cannot be
# changed without rewriting all the code. Neither can the logic for selecting
# the best estimate be used with a different numerical analysis algorithm
# without copy-and-paste.
def sqrt_iterative(n)
  # terminate when two successive guesses differ by less than epsilon
  # Initial guess can be anything as long as abs(x - y) > epsilon
  epsilon = 0.0001
  x = 1.0
  y = x + 2.0 * epsilon

  while (x - y).abs > epsilon
    y = x
    x = (x + n/x)/2.0
  end

  x
end

def limit(epsilon, seq)
  # NOTE: To maintain the same behavior as the Haskell code,
  #       peek at the second guess so it's not consumed.
  a = seq.next
  b = seq.peek
  if (a - b).abs <= epsilon
    b
  else
    limit(epsilon, seq)
  end
end

def iterate(a, &f)
  Enumerator.new do |yielder|
    loop do
      yielder << a
      a = f.call(a)
    end
  end.lazy
end

def sqrt(n)
  limit(0.0001, iterate(1.0) { |a| (a + n/a.to_f)/2.0 })
end
