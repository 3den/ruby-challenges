require "minitest/autorun"
require_relative "./cube"

describe Cube do
  it "validates the input" do
    assert_broken_input ["C"]
    assert_valid_input ["CC", "CC"]
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
