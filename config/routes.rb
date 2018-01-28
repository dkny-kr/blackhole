Rails.application.routes.draw do
  get 'articles/index'

  get 'articles/new'

  get 'articles/show'

  root 'articles#index'

  resource :articles

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
