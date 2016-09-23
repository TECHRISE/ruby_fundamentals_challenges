require 'spec_helper'

RSpec.describe "#is_palindrome?" do

  context "given string is palindrome" do
    it "returns true" do
      expect(is_palindrome?("racecar")).to be(true)
      expect(is_palindrome?("rAcEcaR")).to be(true)
    end
  end

  context "given string is not a palindrome" do
    it "returns false" do
      expect(is_palindrome?("banana")).to be(false)
    end
  end
  
end