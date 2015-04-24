get '/' do
  # Look in app/views/index.erb
  @cars = Car.all
  erb :index
end

post '/cars' do
  puts "PARAMS MAKE"
  puts params
  car = Car.find_by(make: params[:make])
  years_driving = params[:years_driving].to_i
  miles_per_year = params[:miles_per_year].to_i
  erb :"_car", layout: false, locals: {car: car, years_driving: years_driving, miles_per_year: miles_per_year}
end

post '/' do
  puts "Params"
  puts params
end


