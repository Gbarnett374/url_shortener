Rails.application.routes.draw do
  root to: 'urls#new'
  
  get 'urls/index'

  post '/', to: 'urls#create'

  get 'urls/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
