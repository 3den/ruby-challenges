require_relative "./math_tree"
require "minitest/autorun"

describe MathTree do
  it "solves 1 + ? = 2" do
    MathTree.new(1, 1).solve("1 + ? = 2").must_equal 1
    MathTree.new(-1, 20).solve("1 + ? = 2").must_equal 1
    MathTree.new(-1, 3).solve("? / (1 + ?) = 0.5437").must_equal 1.1914
  end

  describe "#apply" do
    it "replaces '?' with the given value" do
      MathTree.new.apply("1 + ? = 2", 1).must_equal "1 + 1 = 2"
      MathTree.new.apply("? * ? = 4", 2).must_equal "2 * 2 = 4"
    end
  end
end

