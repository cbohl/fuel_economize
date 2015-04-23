get '/' do
  # Look in app/views/index.erb
  puts "Params"
  puts params
  @cars = Car.all
  erb :index
end

post '/' do
  puts "Params"
  puts params
end
