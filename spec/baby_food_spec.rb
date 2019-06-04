require "spec_helper"

RSpec.describe BabyFood do

  it "puts 'num nums' for small peas" do
    expect { BabyFood.new(kind: "peas", size: "small") }.to output("num nums\n").to_stdout
  end

  it "puts 'WAAAAHHH!' for large peas" do
    expect { BabyFood.new(kind: "peas", size: "large") }.to output("WAAAAHHH!\n").to_stdout
  end

  it "puts 'wwwwWWWWWAAAHHHHH!' for small banana slices" do
    expect { BabyFood.new(kind: "banana slices", size: "small") }.to output("wwwwWWWWWAAAHHHHH!\n").to_stdout
  end

  it "puts 'num nums' for small carrots" do
    expect { BabyFood.new(kind: "carrots", size: "small") }.to output("num nums\n").to_stdout
  end

  it "puts 'Whhhaaaa WAAAAHHHHH!!' for hard small peas" do
    expect { BabyFood.new(kind: "peas", size: "small", texture: "hard") }.to output("Whhhaaaa WAAAAHHHHH!!\n").to_stdout
  end

end
