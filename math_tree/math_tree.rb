class MathTree < Struct.new(:min, :max)

  def solve(problem)
    find_result problem, min.to_f, max.to_f
  end

  def apply(problem, value)
    problem.gsub "?", value.to_s
  end

  private

  def find_result(problem, min, max)
    middle = (max - min) / 2 + min
    p, r = *get_operations(problem, middle)

    if round(p) == round(r)
      round(middle)
    elsif p < r
      find_result(problem, middle, max)
    elsif p > r
      find_result(problem, min, middle)
    end
  end

  def get_operations(problem, value)
    apply(problem, value).split("=").map { |v| eval(v) }
  end

  def round(n)
    n.round(4)
  end
end
