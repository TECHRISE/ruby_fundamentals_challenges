require 'spec_helper'

RSpec.describe "#string_compressor" do

  context "the compressed string is smaller than the original string" do
    it "returns the compressed string" do
      expect(string_compressor("aabcccccaaa")).to eq("a2b1c5a3")
      expect(string_compressor("aabcCCCCCaaa")).to eq("a2b1c1C5a3")
    end
  end

  context "the compressed string is larger than the original string" do
    it "returns the original string" do
      expect(string_compressor("abc")).to eq("abc")
      expect(string_compressor("AaBbCcDd")).to eq("AaBbCcDd")
    end
  end
  
end