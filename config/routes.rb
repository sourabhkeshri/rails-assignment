Rails.application.routes.draw do
 
 get "home/csv", to: "home#csv"
 get "home/pdf", to: "home#pdf"
 
 resources :home
 root "home#index"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
