class Triangle
  attr_accessor :s1, :s2, :s3

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def not_a_triangle(s1, s2, s3)
    triangle = [s1, s2, s3].sort
      if triangle[0] <= 0 || triangle[2] > triangle[0] + triangle[1]
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
  end

  def kind
    if s1 == s2 && s2 == s3
      return :equilateral
    elsif s1 == s2 || s2 == s3 || s3 == s1
      return :isosceles
    elsif
      return :scalene
    else
      not_a_triangle
  end

 #    self.partner = person
 #   if person.class != Person
 #     begin
 #       raise PartnerError
 #     rescue PartnerError => error
 #         puts error.message
 #     end
 #   else
 #     person.partner = self
 #   end
 # end


  class TriangleError < StandardError

  end

end
