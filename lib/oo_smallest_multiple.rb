# Implement your object-oriented solution here!

class SmallestMultiple
  def initialize(max)
    @max = max
  end
  
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
  
  def lcm
    factors = (1..@max).to_a
    mm = 1
    
    factors.each_with_index do |f, i|
      next_f = factors[i + 1]
      unless next_f == nil
        mm *= lowest_factor_of(next_f) unless mm % next_f == 0
      end
    end
    
    mm
  end
end
