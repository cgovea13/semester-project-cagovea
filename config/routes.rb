Rails.application.routes.draw do

  root 'dashboard#index'
  resources :faculties do
    collection { post :import}
  end
  resources :courses
  resources :administrators
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
