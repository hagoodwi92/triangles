class Triangle
  attr_accessor(:side1,:side2,:side3)
  def initialize (side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def triangle_type
    if ((@side1 + @side2) <= @side3) | ((@side2 + @side3) <= @side1)
    return "Not a Triangle"
    elsif ((@side1 == @side2) & (@side2 == @side3) & (@side1 == @side3))
      return "Equilateral"
    elsif (@side1 == @side2) | (@side2 == @side3)
      return "Isosceles"
    else ((@side1 != @side2) & (@side2 != @side3) & (@side1 != @side3))
      return "Scalene"
    end
  end
end