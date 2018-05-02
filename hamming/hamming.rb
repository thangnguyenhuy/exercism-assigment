class Hamming
  def self.compute(a,b)
    raise ArgumentError if a.length != b.length
    char_a = a.split('')
    char_b = b.split('')
    count = 0
    char_a.each_index do | i|
      char_a[i] == char_b[i] ? count : count += 1
    end
    count
  end
end

module BookKeeping
  VERSION = 3
end


