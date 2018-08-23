Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'profiles#index'

  resources :profiles do
    resources :students
    resources :instructors
    resources :admins
  end

  resources :courses

  resources :cohorts do
    resources :enrollments
  end
end
