Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :countries
  root 'welcome#index'
  resources :destinations do
    resources :comments
  end
  resources :tips

end
