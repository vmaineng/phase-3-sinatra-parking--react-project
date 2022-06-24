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
delete "/parkedcars/:id" do
  license = Parkedcar.find(params[:id])
license.destroy
license.to_json
end

#browser can only send a get request; we use postman for other request

#update a reservation - rough draft; need to add in arrival and depature
patch "/parkedcars/:id" do
  license = Parkedcar.find(params[:id])
  license.update(
    price: params[:price],
    arrival: params[:arrival],
  departure: params[:departure]
  )
  #license.to_json
  #options = get_time_format
  license.to_json(get_time_format)
end

get "/vehicles" do 
  data = Vehicle.all.to_json
 end
 
get "/parkedcars" do
  data = Parkedcar.all.to_json
end

get "/parking_lots" do
  data = ParkingLot.all.to_json
end

private
def get_time_format()
  { methods: [:formatted_time] }
end
  # get "/" do
  #   { message: "Good luck with your project!" }.to_json
  # end

end




