Rails.application.routes.draw do
  get 'highlights/show'

  get 'highlights/new'

  get 'highlights/edit'

  resources :meetings do
    resources :highlights
  end
  devise_for :users
  root to: 'meetings#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
