class Fibonacci
  @previous_number = 1
  @current_number = 2
  @sum = 0
  def self.sumEvens
    while @current_number < 4000000
      if @current_number % 2 == 0
        @sum += @current_number
        puts "sum = " + @sum.to_s
      end
      y = @current_number
      @current_number += @previous_number
      @previous_number = y
      puts "current number = " + @current_number.to_s
    end
  end
end

Fibonacci.sumEvens