class Fixnum
  
  def to_roman
    ronan_mapping = {
      1000  => 'M',
      900   => 'CM',
      500   => 'D',
      400   => 'CD',
      100   => 'C',
      90    => 'XC',
      50    => 'L',
      40    => 'XL',
      10    => 'X',
      9     => 'IX',
      5     => 'V',
      4     => 'IV',
      1     => 'I'
    }
    return '' if self.zero?
    number = self
    romanzied = ''
    ronan_mapping.each do |(num, roman)|
      romanzied << (roman * (number/num))
      number = number % num
    end
    return romanzied
  end
end

module BookKeeping
  VERSION = 2
end