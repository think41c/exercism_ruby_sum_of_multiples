class SumOfMultiples

  attr_accessor :multiple_upto, :first_multiple

  def initialize (first_multiple = 3, second_multiple = 5, *additional_multiple)
    @first_multiple = first_multiple
    @second_multiple = second_multiple
    # puts "do i run?"
  end

  # def multiple_upto
  #   @multiple_upto
  # end

  def self.to(multiple_upto)
    @multiple_upto = multiple_upto
    sum_the_multiples (self.find_the_multiples)
  end

  def self.find_the_multiples
    found_multiple = []
    # puts @first_multiple
    (1...@multiple_upto).each do |x|
      found_multiple << x if x % 3 == 0 || x % 5 == 0  
      end
    found_multiple
  end

  def self.sum_the_multiples(found_multiple)
    found_multiple.reduce(0,:+)
  end
end

# SumOfMultiples.to(10)
# SumOfMultiples.new(7, 13, 17).to(20)