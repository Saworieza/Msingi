Rails.application.routes.draw do
  resources :exam_managements
  get 'exam_management/index'
  get 'exam_management/show'
  get 'users/index'

  resources :students
  resources :teachers
  resources :tasks
  resources :priorities
  resources :events
  resources :book_statuses
  resources :publishers
  resources :authors
  resources :books
  resources :disciplines
  resources :payment_types
  resources :payments
  resources :exams
  resources :cats
  resources :assignments
  resources :departments
  resources :streams
  resources :contacts
  resources :subjects
  resources :terms
  resources :houses
  resources :years
  resources :classrooms
  resources :schools
  devise_for :users
  root 'home#index'

end
