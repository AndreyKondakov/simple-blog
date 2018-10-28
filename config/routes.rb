Rails.application.routes.draw do
  root 'welcome#index'

  resources :articles

  resources :articles do
  	resources :comments
  end

end