Rails.application.routes.draw do
  resources :courses do
    resources :course_registrations, only: [:create]
  end
  
  #get 'student/home'
  devise_for :users, controllers: { sessions: 'sessions', registrations: 'registrations' }

  #get 'main/main_stage'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root "main#main_stage"
  get 'main_stage', to: "main#main_stage", as: 'danceschool'
  get 'login', to: "main#login", as: 'login'
  get 'cours', to: "courses#index", as: 'cours'
  get 'help', to: "main#help", as: 'help'
  get 'contact', to: "main#contact", as: 'contact'

  #student
  get 'student', to: "student#home", as: 'student'
  get 'grafik', to: "student#grafik", as: 'grafik'
  get 'my_course', to: "student#my_course", as: 'my_course'
  get 'student_profile', to: "student#student_profile", as: 'student_profile'
  get 'student_sign_out', to: 'student#student_sign_out', as: 'student_sign_out'

  #teacher
  get 'teacher', to: "teacher#home", as: 'teacher'
  get 'instructor_grafik', to: "teacher#instructor_grafik", as: 'instructor_grafik'
  get 'own_course', to: "teacher#own_course", as: 'own_course'
  get 'teacher_profile', to: "teacher#teacher_profile", as: 'teacher_profile'
  get 'teacher_sign_out', to: 'teacher#teacher_sign_out', as: 'teacher_sign_out'

  #admin
  get 'admin', to: "admin#home", as: 'admin'
  get 'admin_sign_out', to: 'admin#admin_sign_out', as: 'admin_sign_out'

end