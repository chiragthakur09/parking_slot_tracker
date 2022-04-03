Rails.application.routes.draw do
  resources :slots
  resources :booking_logs
  resources :vehicles
  resources :entry_points
  resources :locations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
