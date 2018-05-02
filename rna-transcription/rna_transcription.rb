class Complement

  def self.of_dna(dna)
    dna_mapping = {
    'C' => 'G',
    'G' => 'C',
    'T' => 'A',
    'A' => 'U'
    }
    result = ''
    input_dna = dna.split('')
    input_dna.each_entry do |dna_i|
      if dna_mapping[dna_i]
        result << dna_mapping[dna_i]
      else
        return ''
      end
    end
    result
  end
end

module BookKeeping
  VERSION = 4
end
