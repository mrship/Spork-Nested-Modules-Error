RspecSharedExampleError::Application.routes.draw do
  root  to: 'dashboard#top_level'
  
  namespace :layer_one do
    get '', to: 'dashboard#layer_one' 

    namespace :layer_two do
      get '', to: 'dashboard#layer_two' 
    end
  end
end
