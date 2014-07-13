Rails.application.routes.draw do
  get 'home/index'

  root 'home#index'
  scope '/api' do
    resources :blogs do
      resources :entries
    end
  end
end
