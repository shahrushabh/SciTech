Rails.application.routes.draw do
  namespace :repositories do
    get 'branches/new'
    get 'branches/create'
    get 'branches/update'
    get 'branches/edit'
    get 'branches/destroy'
    get 'branches/index'
    get 'branches/show'
  end
  get 'repositories/new'
  get 'repositories/create'
  get 'repositories/update'
  get 'repositories/edit'
  get 'repositories/destroy'
  get 'repositories/index'
  get 'repositories/show'
  get 'about/index'

  get 'about' => 'about#index'
  get 'repositories' => 'repositories#index'

  root 'repositories#index'

  resources :repositories
  resources :branches
end
