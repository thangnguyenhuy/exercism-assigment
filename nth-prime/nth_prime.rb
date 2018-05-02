class Prime
  attr_reader :n

  def self.nth(n)
    raise ArgumentError if n == 0

    i = 2
    count = 0
    while true
      count += 1 if is_prime?(i)
      return i if count == n
      i += 1
    end
  end

  def self.is_prime?(number)
    if number <= 1
      return false
    end
    index = 2
    while index < number
      if (number % index) == 0
        return false
      end
      index += 1
    end
    return true
  end

end

module BookKeeping
  VERSION = 1
end