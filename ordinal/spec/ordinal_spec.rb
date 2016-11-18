require 'spec_helper'

RSpec.describe "#ordinal" do
  context "number is 1" do
    it "returns 1st" do
      expect(ordinal(1)).to eq("1st")
    end
  end

  context "number is 2" do
    it "returns 2nd" do
      expect(ordinal(2)).to eq("2nd")
    end
  end

  context "number is 3" do
    it "returns 3rd" do
      expect(ordinal(3)).to eq("3rd")
    end
  end

  context "number is 4" do
    it "returns 4th" do
      expect(ordinal(4)).to eq("4th")
    end
  end

  context "number is 11" do
    it "returns 11th" do
      expect(ordinal(12)).to eq("11th")
    end
  end 

  context "number is 112" do
    it "returns 112th" do
      expect(ordinal(12)).to eq("112th")
    end
  end 

  context "number is 213" do
    it "returns 213th" do
      expect(ordinal(13)).to eq("213th")
    end
  end 

  context "number is 105" do
    it "returns 105th" do
      expect(ordinal(105)).to eq("105th")
    end
  end
end