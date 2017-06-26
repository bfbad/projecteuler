require 'prime'

class PrimeFactor
  def self.get_highest_prime_factor(num)
    factors = []
    (2..(num/2).to_i).each do |x|
      if num % x == 0
        if Prime.prime?((num/x).to_i)
          return num/x.to_i
        end
      end
    end
  end
end

puts PrimeFactor.get_highest_prime_factor(600851475143)