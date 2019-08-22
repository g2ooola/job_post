Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'choice', to: 'home#choice'
  resources :companys, only: [:index, :show]
  resources :jobs, only: [:index, :show] 
  namespace :admin do
    root 'admin#show'
    resources :company, only: [:show, :edit, :update]
    resources :job, only: [:new, :create, :edit, :update, :detele]
  end

  get 'apply', to: 'apply#new'

  root 'home#choice'
end