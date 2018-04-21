Rails.application.routes.draw do
  root to: 'urls#new'
  post '/', to: 'urls#create'
  get 'urls/show'
  get '/:shortened_href', to: 'urls#redirect'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
