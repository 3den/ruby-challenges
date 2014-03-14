class Cube
  InvalidInput = Class.new
  attr_reader :input, :cube

  def initialize(input)
    @input = sanitize input
    @cube = [[false, false],[false, false, false, false]]
    validate
  end

  private

  def sanitize(input)
    input.map {|row| (row.split '' rescue row) }
  end

  def validate
    fail "Invalid Input" unless valid?
  end

  def valid?
    input.size > 1 and
    input.size < 21 and
    input.first.size > 1 and
    input.first.size < 21
  end

end

class ColorCube
  attr_reader :position, :cube

  def initilize
    @cube = [[false, false],[false, false, false, false]]
  end

  def move(direction)

  end
end
