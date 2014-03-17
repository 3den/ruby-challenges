class MathTree < Struct.new(:min, :max)

  def solve(problem)
    solve_loop problem, min.to_f, max.to_f
  end

  def apply(problem, value)
    problem.gsub "?", value.to_s
  end

  private

  def solve_recursion(problem, min, max)
    middle = (max - min) / 2 + min
    p, r = *get_operations(problem, middle)

    if p == r
      round(middle)
    elsif p < r
      solve_recursion(problem, middle, max)
    elsif p > r
      solve_recursion(problem, min, middle)
    end
  end

  def solve_loop(problem, min, max)
    while min <= max do
      middle = (max - min) / 2 + min
      p, r = *get_operations(problem, middle)

      if p == r
        return round middle
      elsif p < r
        min = middle
      elsif p > r
        max = middle
      end
    end
  end

  def get_operations(problem, value)
    apply(problem, value).split("=").map { |v| round eval(v) }
  end

  def round(n)
    n.round(4)
  end
end
