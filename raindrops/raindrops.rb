class Raindrops

  def self.convert(numbers)
    translate = {
      3 => 'Pling',
      5 => 'Plang',
      7 => 'Plong'
    }
    result = ''

    translate.each do |(num, sound)|
      result << sound if numbers % num == 0
    end

    result == '' ? numbers.to_s : result
  end
end

module BookKeeping
  VERSION = 3
end