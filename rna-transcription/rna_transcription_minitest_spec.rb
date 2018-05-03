require 'minitest/reporters'
require 'minitest/autorun'
require_relative 'rna_transcription'

require 'bundler/setup'
Bundler.require(:default)

Minitest::Reporters.use! [
  Minitest::Reporters::SpecReporter.new,
  Minitest::Reporters::HtmlReporter.new
]

describe "RnaTranscription" do
  describe "One-nucleotide" do
    it "maps C to G" do
      Complement.of_dna('C').must_equal 'G'
    end

    it "maps G to C" do
      Complement.of_dna('G').must_equal 'C'
    end

    it "maps T to A" do
      Complement.of_dna('T').must_equal 'A'
    end

    it "maps A to U" do
      Complement.of_dna('A').must_equal 'U'
    end
  end

  describe "Regular Strands" do
    it "long string" do
      Complement.of_dna('ACGTGGTCTTAA').must_equal 'UGCACCAGAAUU'
    end
  end

  describe "Handle invalid input" do
    it "One-nucleotide invalid input" do
      Complement.of_dna('U').must_equal ''
    end

    it "Multile-nucleotide invalid input" do
      Complement.of_dna('XXX').must_equal ''
    end

    it "invalid partically input" do
      Complement.of_dna('ACGTXXXCTTAA').must_equal ''
    end
  end

  describe BookKeeping do
    it "returns the right version" do
      BookKeeping::VERSION.must_equal 4
    end
  end
end

