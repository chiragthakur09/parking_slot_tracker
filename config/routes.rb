Rails.application.routes.draw do
  get 'home/index'
  get 'home/book_slot'
  get 'home/show_logs'
  post 'home/allot_a_slot'
  resources :slots
  resources :vehicles
  resources :entry_points
  #resources :locations
  resources :locations do
    member do
      patch :move
    end
  end
  root :to => 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
