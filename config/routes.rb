Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'error', to: 'posts#error'

  resources :posts

  root 'posts#index'
  get '*path', to: redirect('/error')
end
