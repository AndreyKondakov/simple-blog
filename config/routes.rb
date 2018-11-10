Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'welcome#index'

  resources :articles

  resources :articles do
  	resources :comments
  end

  get 'about', to: 'about#about-us'

end