Rails.application.routes.draw do
  root to: 'urls#new'
  get '/:shortened_href', to: 'urls#redirect', as: 'redirect'
  resources :urls, only: [:create, :new, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
