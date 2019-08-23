Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'choice', to: 'home#choice'
  resources :companys, only: [:index, :show]
  resources :jobs, only: [:index, :show]

  namespace :admin do
    # root 'home#base_info'
    get 'need_login', to: 'home#need_login'
    get 'login', to: 'home#login'
    get 'logout', to: 'home#logout'
    resources :companys, only: [:show, :edit, :update]
    resources :jobs, only: [:new, :create, :edit, :update, :destroy]
  end

  get 'apply', to: 'apply#new'

  root 'home#choice'
end