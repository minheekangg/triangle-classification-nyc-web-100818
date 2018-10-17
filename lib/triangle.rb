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
      end
  end

  def kind
    if not_a_triangle
      raise TriangleError
    # rescue TriangleError => error
    #   puts error.message

    elsif s1 == s2 && s2 == s3
      return :equilateral
    elsif s1 == s2 || s2 == s3 || s3 == s1
      return :isosceles
    else
      return :scalene

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
    def message
      "you must give the get_married method an argument of an instance of the person class!"
  end
 end
end
