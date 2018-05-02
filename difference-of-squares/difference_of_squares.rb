class Squares
  def initialize(num)
    @number_range = (1..num.abs).to_a
  end

  def square_of_sum
    @number_range.reduce(:+)**2
  end

  def sum_of_squares
    @number_range.reduce { |sum, number| sum + (number ** 2) }
  end

  def difference
    square_of_sum - sum_of_squares
  end

end

module BookKeeping
  VERSION = 4
end
