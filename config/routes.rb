Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'statics/index' => 'statics#index'
  root 'statics#index'
  get 'entryseats/new' => 'entryseats/new'
  post 'entryseats' => 'entryseats#create'
  get 'entryseats/index' => 'entryseats#index'
  get 'entryseats/:id' => 'entryseats#show',as: 'entryseat'
  resources :entryseats
  



  
end
