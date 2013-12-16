Portfolio::Application.routes.draw do
  root 'projects#index'

  resources :categories
  resources :projects
end
