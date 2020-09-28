require('sinatra')
require('sinatra/reloader')
require('./lib/triangle')
require('pry')
also_reload('lib/**/*.rb')

# get('/newtriangle') do 
#   side1 = params[:side1]
#   side2 = params[:side2]
#   side3 = params[:side3]
#   triangle = Triangle.new(side1, side2, side3)
#   # @result = triangle.triangle_type()
#   erb(:triangle)
# end

get('/') do 
  'This is the starting point of the triangle api'
  erb(:triangle)
end

post('/') do
  binding.pry
  side1 = params[:side1].to_i
  side2 = params[:side2].to_i
  side3 = params[:side3].to_i
  @triangle = Triangle.new(side1, side2, side3)
  @result = @triangle.triangle_type()
  erb(:whatever)
end
