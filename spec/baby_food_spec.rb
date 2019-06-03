require "spec_helper"

RSpec.describe BabyFood do
  # Move your tests into logical groupings with context
    FAVORITE_KINDS = [
    "peas",
    "carrots",
    "apple sauce",
    "peach"
  ]
  describe "#initialize" do
  it "puts 'num nums' for small peas" do
    expect { BabyFood.new(kind: "peas", size: "small") }.to output("num nums\n").to_stdout
  end

  # These tests are pending until they are passed a block. Follow the formula for 'small peas' to make these work.
  it "puts 'WAAAAHHH!' for large peas" do
    expect { BabyFood.new(kind: "peas", size: "large") }.to output("WAAAAHHH!\n").to_stdout
  end
  it "puts 'wwwwWWWWWAAAHHHHH!' for small banana slices" do
    expect { BabyFood.new(kind: "banana", size: "small") }.to output("wwwwWWWWWAAAHHHHH!\n").to_stdout
  end
  it "puts 'num nums' small carrots" do
    expect { BabyFood.new(kind: "carrots", size: "small") }.to output("num nums\n").to_stdout
  end
  it "puts 'WAAAAHHH!' for hard small peas" do
    expect { BabyFood.new(kind: "peas", size: "hard") }.to output("WAAAAHHH!\n").to_stdout
  end

  it "puts 'num nums' for valid input" do
    FAVORITE_KINDS.each do |food|
      expect {BabyFood.new(kind: food, size: "small", texture: "soft")}.to output("num nums\n").to_stdout
    end
  end
  it "puts 'WAAAAHHH!' for valid input" do
    FAVORITE_KINDS.each do |food|
      expect {BabyFood.new(kind: food, size: "large", texture: "soft")}.to output("WAAAAHHH!\n").to_stdout
    end
  end
  it "puts 'Whhhaaaa WAAAAHHHHH!' for invalid input" do
    FAVORITE_KINDS.each do |food|
      expect {BabyFood.new(kind: food, size: "small", texture: "hardaf")}.to output("Whhhaaaa WAAAAHHHHH!\n").to_stdout
    end
  end

  # Can you write one test using iteration to check all the FAVORITE_KINDS of baby food?

  # This spec file is complete when all favorite foods, invalid size, and invalid texture scenarios have been tested.
  end
end
