class SumOfMultiples

  class << self
    def to(number)
      new(3, 5).to(number)
    end
  end

  def initialize(*divisor)
    @divisor = divisor
  end

  def to(number)
    numb = (1...number).select { |n| multiple?(n) }
    numb.reduce(0, :+)
  end

  def multiple?(number)
    @divisor.any? { |multiple| number % multiple == 0 }
  end
end
