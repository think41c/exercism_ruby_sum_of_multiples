class SumOfMultiples

  attr_accessor :multiple_upto, :first_multiple

  def initialize (first_multiple = 3, second_multiple = 5, *additional_multiple)
    @first_multiple  = first_multiple
    @second_multiple = second_multiple
  end

  def self.to(multiple_upto)
    @multiple_upto = multiple_upto
    sum_the_multiples (self.find_the_multiples)
  end

  def self.find_the_multiples
    found_multiple = []
    divisors = [3,5]
    (0..divisors.length-1).each do |divisor_num|
      (1...@multiple_upto).each do |x|
        if x % divisors[divisor_num] == 0 
          found_multiple << x 
        end
      end
    end
    found_multiple
  end

  def self.sum_the_multiples(found_multiple)
    found_multiple.reduce(0,:+)
  end
end

p SumOfMultiples.to(10)
# SumOfMultiples.new(7, 13, 17).to(20)