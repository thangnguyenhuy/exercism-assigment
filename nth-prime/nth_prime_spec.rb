require 'bundler/setup'
Bundler.require(:default, :rspec)

require_relative 'nth_prime'

describe "NthPrime" do
  describe "Few first prime" do
    it "First prime" do
      expect(Prime.nth(1)).to eq 2
    end

    it "Second prime" do
      expect(Prime.nth(2)).to eq 3
    end

    it "Sixth prime" do
      expect(Prime.nth(6)).to eq 13
    end
  end

  describe "Big prime" do
    it "10001 prime" do
      expect(Prime.nth(10001)).to eq 104743
    end
  end

  describe "The zero prime" do
    it "Zero prime" do
      # Prime.nth(0).must_raise ArgumentError
      expect { Prime.nth(0) }.to raise_error(ArgumentError)
    end
  end
  describe BookKeeping do
    it "returns the right version" do
      expect(BookKeeping::VERSION).to eq 1
    end
  end

end
