Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/songs', to: 'songs#index'
  # '/songs' is accepting the request, to: 'songs#index' is the controller
  
  get '/songs/:id', to: 'songs#show'
  #^not a :symbol, it's route specific language
  
  
end
