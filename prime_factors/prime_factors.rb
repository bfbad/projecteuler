class PrimeFactors
  def self.findFactors(num)
    (2..num/2).each do |x|
      if num % x == 0
        y = num / x
        if y%2 == 0 
          if y.to_i.is_prime?
            puts y
          end
        end
      end
    end 
  end
 
  private

  def is_prime?(y)
    (2..y).each do |x|
      if y % x == 0 
        return true
      end
    end
    return false 
  end
end

PrimeFactors.findFactors(13195)