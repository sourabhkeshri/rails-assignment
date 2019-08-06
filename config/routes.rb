Rails.application.routes.draw do
 
 get "home/csv", to: "home#csv"
 get "home/pdf", to: "home#pdf"
 get "home/mail_to", to: "home#mail_to"

 # get "users/index"
 # get "users/show"
 # get "users/new"
 # get "users/edit"

 get "users/search" , to: "users#search"
 resources :home
 resources :users
 resources :posts
 root "home#index"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
