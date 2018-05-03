require 'bundler/setup'
Bundler.require(:default, :rspec)

require_relative 'rna_transcription'

describe "RnaTranscription" do
  describe "One-nucleotide" do
    it "maps C to G" do
      expect(Complement.of_dna('C')).to eq 'G'
    end

    it "maps G to C" do
      expect(Complement.of_dna('G')).to eq 'C'
    end

    it "maps T to A" do
      expect(Complement.of_dna('T')).to eq 'A'
    end

    it "maps A to U" do
      expect(Complement.of_dna('A')).to eq 'U'
    end
  end

  describe "Regular Strands" do
    it "long string" do
      expect(Complement.of_dna('ACGTGGTCTTAA')).to eq 'UGCACCAGAAUU'
    end
  end

  describe "Handle invalid input" do
    it "One-nucleotide invalid input" do
      expect(Complement.of_dna('U')).to eq ''
    end

    it "Multile-nucleotide invalid input" do
      expect(Complement.of_dna('XXX')).to eq ''
    end

    it "invalid partically input" do
      expect(Complement.of_dna('ACGTXXXCTTAA')).to eq ''
    end
  end

  describe BookKeeping do
    it "returns the right version" do
      expect(BookKeeping::VERSION).to eq 4
    end
  end
end
