Rails.application.routes.draw do
  root to: 'urls#index'
  
  get 'urls/index'

  get 'urls/create'

  get 'urls/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
