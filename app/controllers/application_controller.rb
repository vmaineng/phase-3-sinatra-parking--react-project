class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

#find license plate

post "/vehicles/find_by" do
  license = Vehicle.find_by(license_plate: params[:vehicle])
  cars = license.parkedcars
  cars.to_json 
end

get "/parked_cars" do 
 data = ParkedCar.all.to_json
end

  # get "/" do
  #   { message: "Good luck with your project!" }.to_json
  # end

end




