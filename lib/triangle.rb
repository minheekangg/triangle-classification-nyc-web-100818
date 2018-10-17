class Triangle
  attr_accessor :side

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    if s1 == s2 && s2 == s3
      return :equilateral
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
  end


  class TriangleError < StandardError

  end

end
