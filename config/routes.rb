Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :resumes do
    resource :work_experiences
    resource :certificates
    resource :projects
  end
  root to: 'resumes#index'
end
