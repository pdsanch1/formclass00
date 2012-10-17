Picmarks::Application.routes.draw do
  
  get "/pictures", { :controller => 'Pictures', :action => 'index' }
  post "/pictures", { :controller => 'Pictures', :action => 'create' }
  
  get "/pictures/:giraffe", { :controller => 'Pictures', :action => 'show' }
  
  get "/new_pictures", { :controller => 'Pictures', :action => 'add_picture' }
  
end
