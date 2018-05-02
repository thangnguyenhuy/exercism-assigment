class Sieve
  attr_reader :number
  def initialize number
    @number = number
  end

  def primes
    prime = []
    if @number < 2
      return prime
    end
    for i in (2..@number) do
      for j in (2..i) do
        break if i % j == 0
      end
      prime << i if i == j
    end
    prime
  end
end

module BookKeeping
  VERSION = 1
end