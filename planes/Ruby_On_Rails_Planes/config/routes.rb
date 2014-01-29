RouteApp::Application.routes.draw do
 #create our root route
 #request type, and the path
 #our route is separated from our controller logic.
 #planes is the controller name that we will create
 #index is a method. 
 get "/", to: "planes#index"
 #this could be written as: get "/", :to => "planes#index"
 #this could also be written as => root to: "planes#index" instead of the get block

end
#we have to define something different from the welcome aboard message
#Essentially, we have to define a controller, and a route. 

