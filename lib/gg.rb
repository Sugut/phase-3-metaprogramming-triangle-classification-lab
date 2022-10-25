class Triangle
  # write code here
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
     if(@a <= 0 || @b <= 0 || @c <= 0)
       raise TriangleError
     elsif(@a+@b <= @c || @a+@c <= @b || @b+@c <= @a) 
       raise TriangleError
     elsif(@a==@b|| @a==@c|| @c==@b)  
        :equilateral
     elsif(@a==@b || @b==@c)  
        :isosceles
     else
        :scalene 
     end
  end

  class TriangleError < StandardError
    # triangle error code
    def message
      "Invalid Triangle"
    end
  end
end
