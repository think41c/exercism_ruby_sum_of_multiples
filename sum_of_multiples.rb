class SumOfMultiples

  def initialize (first_multiple = 3, second_multiple = 5, *additional_multiple)

  end

  def self.to(multiple_upto)
    sum_the_multiples (self.find_the_multiples)
  end

  def self.find_the_multiples
    # Step 1: 
    # Start X at 1, divide it by 3, if it's 0, then it's a multiple and save X to "found_multiple"
    # Repeat the same process for dividing by 5. 

    # Step 1.5:
    # Use a range of iterations to make sure X is never equal to or greater than multiple_upto. An exclusive range -> (...)

    # Step 2: 
    # Increment X by 1. Repeat Step 1. 

    # Step 3: 
    # Take the resulting array of multiples and send them to sum_the_multiples

  end

  def self.sum_the_multiples(found_multiple)
    # Iterate through all the multiples adding them together and returning them to the calling method.
    0
    # "summed_multiples" is returned
  end

end

SumOfMultiples.new(9)
