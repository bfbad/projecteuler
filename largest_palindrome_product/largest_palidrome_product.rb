class ProductTest
  def self.run
    @array_of_palindromes = []
    puts "running"
    (100..999).each do |x|
      puts x
      (100..999).each do |y|
        puts y
        if ProductTest.is_palindrome?(x.to_i*y.to_i)
          @array_of_palindromes.push(x.to_i*y.to_i)
        end
      end
    end
    @array_of_palindromes.max
  end

  private

  def self.is_palindrome?(num)
    num.to_s == num.to_s.reverse
  end
end

puts ProductTest.run