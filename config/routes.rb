Rails.application.routes.draw do
  resources :food_items

  get "menu" => "menu#index"
  get "contact_us" => "home#contact_us"
  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
