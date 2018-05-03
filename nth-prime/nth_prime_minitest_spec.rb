require 'minitest/autorun'
require_relative 'nth_prime'

describe "NthPrime" do
  describe "Few first prime" do
    it "First prime" do
      Prime.nth(1).must_equal 2
    end

    it "Second prime" do
      Prime.nth(2).must_equal 3
    end

    it "Sixth prime" do
      Prime.nth(6).must_equal 13
    end
  end

  describe "Big prime" do
    it "10001 prime" do
      Prime.nth(10001).must_equal 104743
    end
  end

  describe "The zero prime" do
    it "Zero prime" do
      # Prime.nth(0).must_raise
    end
  end
  describe BookKeeping do
    it "returns the right version" do
      BookKeeping::VERSION.must_equal 1
    end
  end

end
