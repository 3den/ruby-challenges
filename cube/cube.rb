class Cube
  attr_reader :front, :back

  def initialize

  end

  def paint_bottom
    @bottom = true
  end

  def rotate_left
    aux = bottom

  end

  class Side < Struct.new(:top, :bottom, :left, :right)
    attr_accessor :color

    def top=(side)
      super(side)
      side.bottom = self
      side.left = self.left
      side.right = self.right
    end

  end
end

class Board
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
