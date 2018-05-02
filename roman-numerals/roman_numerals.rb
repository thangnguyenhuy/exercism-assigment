class Fixnum
  ROMAN_MAPPING = {
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

  def to_roman
    return '' if self.zero?
    number = self
    roman_highest = ROMAN_MAPPING.detect {|num, roman| number >= num }
    roman_highest[1] + (self - roman_highest[0]).to_roman
  end
end

module BookKeeping
  VERSION = 2
end