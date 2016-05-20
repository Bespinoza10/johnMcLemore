Rails.application.routes.draw do

  root 'welcome#index'
  resources :posts, path: :news

end
