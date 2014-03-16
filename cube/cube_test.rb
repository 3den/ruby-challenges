require "minitest/autorun"
require_relative "./cube"

describe Cube do
  it "initilizes the cube" do
    cube.front.must_equal false
    cube.back.must_equal false
    cube.left.must_equal false
    cube.right.must_equal false
    cube.top.must_equal false
    cube.bottom.must_equal false
  end

  describe "#paint_bottom" do
    it "sets the bottom color" do
      cube.paint_bottom
      cube.bottom.must_equal true
    end
  end

  describe "#rotate" do
    it "rotates to the left" do
      cube.paint_bottom and cube.rotate_left
      cube.bottom.must_equal false
      cube.right.must_equal true
    end
  end

  describe Side do

  end

  def cube
    @cube ||= Cube.new
  end
end

describe Board do
  it "validates the input" do
    #assert_broken_input ["C"]
    #assert_valid_input ["CC", "CC"]
  end

  def assert_valid_input(input)
    Cube.new input
  end

  def assert_broken_input(input)
    Cube.new input
    fail "the input `#{input}` must fail but it didn't."
  rescue => e
    e.message.must_equal "Invalid Input"
  end
end
