Rails.application.routes.draw do
  root "teachers#index"

  resources :teachers do
    resources :students
  end  


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
