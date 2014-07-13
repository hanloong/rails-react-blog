Rails.application.routes.draw do
  get 'blogs/new'

  get 'blogs/create'

  get 'home/index'

  root 'home#index'
  resources :blogs do
    resources :entries
  end
end
