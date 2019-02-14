Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :cocktails, only: [:create, :new, :index, :show] do
    resources :doses, only: [:create, :new]
  end

  resources :doses, only: [:destroy]
end

# root to: 'restaurants#index'
#   resources :restaurants, only: [:create, :new, :index, :show] do
#     resources :reviews, only: [ :new, :create]
#   end
