Rails.application.routes.draw do
  resources :home, only: [:index, :create]
  root :to => "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
