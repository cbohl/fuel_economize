get '/' do
  # Look in app/views/index.erb
  @cars = Car.all
  erb :index
end

post '/cars/1' do
  puts "PARAMS MAKE"
  puts params
  puts "more params"
  puts params[:car_1][:make]
  car = Car.find_by(make: params[:car_1][:make])
  years_driving = params[:car_1][:years_driving].to_i
  miles_per_year = params[:car_1][:miles_per_year].to_i
  erb :"_car", layout: false, locals: {car: car, years_driving: years_driving, miles_per_year: miles_per_year}
end

post '/cars/2' do
  puts "PARAMS MAKE"
  puts params
  puts "more params"
  puts params[:car_2][:make]
  car = Car.find_by(make: params[:car_2][:make])
  years_driving = params[:car_2][:years_driving].to_i
  miles_per_year = params[:car_2][:miles_per_year].to_i
  erb :"_car", layout: false, locals: {car: car, years_driving: years_driving, miles_per_year: miles_per_year}
end


post '/' do
  puts "Params"
  puts params
end


