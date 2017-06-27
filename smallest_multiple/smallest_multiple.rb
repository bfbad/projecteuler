class SmallestMultiple
  def self.run
    array = []
    (1..19).each do |x|
      array.push(x.to_i)
    end
    i = 20
    until(array.all? {|x| i % x == 0})
      i = i + 20
    end
    puts i
  end
end

SmallestMultiple.run