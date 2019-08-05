require "spec_helper"

RSpec.describe BabyFood do
  describe "#favorite_kinds" do
    it "puts 'wwwwWWWWWAAAHHHHH!' for small banana slices" do
      expect { BabyFood.new(kind: "banana slices", size: "small") }.to output("wwwwWWWWWAAAHHHHH!\n").to_stdout
    end

    it "puts 'wwwwWWWWWAAAHHHHH!' for large banana slices" do
      expect { BabyFood.new(kind: "banana slices", size: "large") }.to output("wwwwWWWWWAAAHHHHH!\n").to_stdout
    end

    it "puts 'num nums' when the baby food kind is a FAVORITE_KIND" do
      FAVORITE_KINDS = [
        "peas",
        "carrots",
        "apple sauce",
        "peach"
      ]
      FAVORITE_KINDS.each do |f|
        expect { BabyFood.new(kind: f, size: "small") }.to output("num nums\n").to_stdout
      end
    end
  end

  describe "#size" do
    it "puts 'WAAAAHHH!' for large peas" do
      expect { BabyFood.new(kind: "peas", size: "large") }.to output("WAAAAHHH!\n").to_stdout
    end
  end

  describe "#texture" do
    it "puts 'Whhhaaaa WAAAAHHHHH!!' for hard small peas" do
      expect { BabyFood.new(kind: "peas", size: "small", texture: "hard") }.to output("Whhhaaaa WAAAAHHHHH!!\n").to_stdout
    end
  end
end
