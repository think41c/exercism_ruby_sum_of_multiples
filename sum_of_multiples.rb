class SumOfMultiples

  def initialize (default = 5, *multiple_divisor)
    p default
    p multiple_divisor
  end

  def self.to(x)
    0
  end
end

SumOfMultiples.new(5, 4, 9)
