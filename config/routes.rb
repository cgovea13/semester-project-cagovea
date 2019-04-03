Rails.application.routes.draw do

  resources :criteria
  root 'dashboard#index'
  resources :faculties do
    collection { post :import}
  end
  resources :courses do
    collection { post :import}
  end
  resources :administrators
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
