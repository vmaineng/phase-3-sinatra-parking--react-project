class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

#find license plate
post "/vehicles/find_by" do
  license = Vehicle.find_or_create_by(license_plate: params[:vehicle])
  cars = license.parkedcars
  cars.to_json 
end

#create a new reservation - rough draft
post "/parkedcars" do
license = Parkedcar.create(
  price: params[:price],
  arrival: params[:arrival],
  departure: params[:departure]
)
license.to_json
end

#delete a reservation - rough draft
delete "/vehicles/:id" do
  license = Vehicle.find(params[:id])
license.destroy
license.to_json
end

#update a reservation - rough draft; need to add in arrival and depature
patch "/parkedcars/:id" do
  license = Parkedcar.find(params[:id])
  license.update(
    price: params[:price]
  )
  license.to_json
end

get "/vehicles" do 
  data = Vehicle.all.to_json
 end
 

get "/parked_cars" do 
 data = ParkedCar.all.to_json
end


  # get "/" do
  #   { message: "Good luck with your project!" }.to_json
  # end

end




