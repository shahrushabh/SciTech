Rails.application.routes.draw do

  get 'about/index'
  get 'about' => 'about#index'
  get 'repositories' => 'repositories#index'

  root 'repositories#index'

  resources :repositories
  resources :repositories do
    resources :branches
  end
  resources :branches
end
