Teaterfred::Application.routes.draw do
  
  resources :news_items
  resources :events
  resources :boards
  resources :partners
  resources :places
  resources :images
  resources :galleries
  resources :users
  resources :sessions
  resources :password_resets

  # SESSIONS - sign -in/out
  match '/signin', :to => 'sessions#new'
  match '/signout', :to => 'sessions#destroy'

  # TICKETS
  #match '/tickets', :to => ''

  root :to => 'pages#index'

  TeaterfredPages.get_pages.each do |key, value|
    match key, :to => "pages#show"
  end
end
