Rails.application.routes.draw do
root to: 'cocktails#index'
resources :cocktails, except: :index do
  resources :doses, only: %i[new create]
end
resources :doses, only: %i[show edit destroy]
end
