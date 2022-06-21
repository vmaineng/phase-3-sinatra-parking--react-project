class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

end


#step 1: create migration tables
#step 2: create seeds to work with data
#step 3: create models and work in the relationships
#step 4: create controllers for CRUD operations
#CRUD operations = create open slot, read the open slots, update the open slots 
# and delete any open slots


