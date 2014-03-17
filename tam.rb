
def degree_tan(n)
  Math.tan(n * (Math::PI / 180))
end

# (t * a) ** 2 = result
def tan_calc1(result)
  Math.sqrt(result) / degree_tan(5)
end

# (tan A) / (1 + tan A) = result
def tan_calc2(result)
  # 1 / cot(x) + 1 =
  # a - (result * a) = result
end

require "minitest/autorun"
describe "#tan_calc1" do
  it "returns the value of a for the given result" do
    tan_calc1(0.3333).must_equal 6.5988138084127295
    tan_calc1(33).must_equal 65.6606515064188
    tan_calc1(23).must_equal 54.81660514669599
  end
end

describe "#tan_calc2" do
  it "returns the value of a for the given result" do
    tan_calc2(0.5437).must_equal 6.5988138084127295
  end
end
#puts "Enter a result for  (TAN 5 * A) ** 2 = result"
#puts "The value of A is #{tan_calc gets.to_f}"
