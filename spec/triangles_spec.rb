require 'rspec'
require 'triangles'
require 'pry'

describe '#Triangle' do 

  describe ('#triangle_type') do 
    
  it('determines triangle type given parameters') do 
    triangle = Triangle.new(5,5,5)
    expect(triangle.triangle_type).to(eq("Equilateral"))
    triangle2 = Triangle.new(7,7,6)
    expect(triangle2.triangle_type).to(eq("Isosceles"))
    triangle3 = Triangle.new(8,7,6)
    expect(triangle3.triangle_type).to(eq("Scalene"))
    triangle4 = Triangle.new(9,4,1)
    expect(triangle4.triangle_type).to(eq("Not a Triangle"))
  end
end
end


