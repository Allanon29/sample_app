SampleApp::Application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :microposts, only: [:create, :destroy]

  root to: 'staticpages#home'

  match '/signup',  to: 'users#new'
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete

  match '/help',    to: 'staticpages#help'
  match '/about',   to: 'staticpages#about'
  match '/contact', to: 'staticpages#contact'

  
end
