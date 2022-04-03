Rails.application.routes.draw do
  get 'home/index'
  get 'home/book_slot'
  get 'home/show_logs'
  get 'home/reset_whole_app'
  get 'home/show_booking/:id' => 'home#show_booking', :as =>'home_show_booking'
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
