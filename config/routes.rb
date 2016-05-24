Rails.application.routes.draw do

  devise_for :users
  root 'welcome#index'
  resources :posts, path: :news

  get '*path' => redirect('/')

end
