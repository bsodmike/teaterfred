Teaterfred::Application.routes.draw do

  resources :partners
  resources :news
  resources :places
  resources :images
  resources :galleries
  resources :users
  resources :sessions

  match '/contact', :to => 'pages#contact'
  match '/admin', :to => 'pages#admin'

  # SESSIONS
  match '/signin', :to => 'sessions#new'
  match '/signout', :to => 'sessions#destroy'

  # TICKETS
  #match '/tickets', :to => ''
  match '/become_member', :to => 'pages#become_member'


  root :to => 'pages#index'


  Pages.get_pages.each do |key, value|
    match key, :to => "pages#show"
  end
end
