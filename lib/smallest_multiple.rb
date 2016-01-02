# Implement your procedural solution here!
require 'pry'
require 'pry-nav'

def lowest_factor_of(num)
  low_primes = [2, 3, 5, 7, 11, 13, 17, 19]
  lowest_multiple = 1
  low_primes.each do |prime| 
    if num % prime == 0 
      lowest_multiple = prime
      break
    end
  end
  
  lowest_multiple
end


def smallest_multiple(max)
  factors = (1..max).to_a
  min_multiple = 1
  
  factors.each_with_index do |f, i|
    next_f = factors[i + 1]
    unless next_f == nil
      unless min_multiple % next_f == 0
        min_multiple *= lowest_factor_of(next_f)
      end
    end
  end
  
  min_multiple
end

