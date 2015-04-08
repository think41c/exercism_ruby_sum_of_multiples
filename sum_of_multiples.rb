class SumOfMultiples

  attr_accessor :multiple_upto

  def initialize (first_multiple = 3, second_multiple = 5, *additional_multiple)

  end

  def multiple_upto
    @multiple_upto
  end

  def self.to(multiple_upto)
    @multiple_upto = multiple_upto
    sum_the_multiples (self.find_the_multiples)
  end

  def self.find_the_multiples
    found_multiple = []
    
    (1...@multiple_upto).each do |x|
      found_multiple << x if x % 3 == 0 || x % 5 == 0  
      end
    puts found_multiple

    # Step 3: 
    # Take the resulting array of multiples and send them to sum_the_multiples

  end

  def self.sum_the_multiples(found_multiple)
    # Iterate through all the multiples adding them together and returning them to the calling method.
    0
    # "summed_multiples" is returned
  end
end

SumOfMultiples.to(10)
