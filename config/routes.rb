Rails.application.routes.draw do
  devise_for :managers
  post '/checkout/:home_id', to: 'shopping#checkout', as: 'checkout_home'
  root 'dashboard#index'
  get 'dashboard/index'
  resources :houses, except: %i[index destroy]
  resources :complex_buildings, except: %i[index destroy]
  resources :commercial_units, except: %i[index destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
