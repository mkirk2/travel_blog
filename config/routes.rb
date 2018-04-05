Rails.application.routes.draw do
  devise_for :users
  resources :countries
  root 'welcome#index'
  resources :destinations do
    resources :comments
  end
  resources :tips

end
