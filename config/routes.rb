Rails.application.routes.draw do
  
  get 'student/home'
  devise_for :users
  get 'main/main_stage'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root "main#main_stage"
  get 'main_stage', to: "main#main_stage", as: 'danceschool'
  get 'login', to: "main#login", as: 'login'
  get 'help', to: "main#help", as: 'help'
  get 'contact', to: "main#contact", as: 'contact'
end
