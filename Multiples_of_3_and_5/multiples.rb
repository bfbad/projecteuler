class Multiples
  def self.calculate(value)
    numbers = []
    (1..value-1).each do |x|
      if(x % 3 == 0 || x % 5 == 0)
        puts x
        numbers.push(x)
      end
    end
    numbers.sum
  end
end

class Array
  def sum
    inject { |sum, x| sum + x }
  end
end

puts Multiples.calculate(1000)
