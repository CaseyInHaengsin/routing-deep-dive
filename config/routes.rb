Rails.application.routes.draw do
  
  get 'about', to: 'pages#about'
  get 'contact', to: "pages#contact"
  resources :blogs
  
  namespace :admin do
    get 'dashboard/main'
    get 'dashboard/user'
    get 'dashboard/blog'
  end
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
