class Pangram
  def self.pangram?(pharse)
    ('a'..'z').all? {|char| pharse.downcase.include?(char)}
  end
end

module BookKeeping
  VERSION = 6
end
