Rails.application.routes.draw do

  resources :topics, only: [:index, :show]

  resources :comments
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :portfolios, except: [:show] do     #Toutes les ressources sauf le show qu'on fait nous meme
    put :sort, on: :collection
  end


  get 'mon-portfolio/:id', to: 'portfolios#show', as: 'portfolio_show' #cet alias portfolio_show est appele depuis la vue dans index de portfolio

  # get 'pages/home'  #this was there but we commented it
  # get 'pages/about'
  get 'about-thomas', to: 'pages#about'

  # get 'pages/contact'
  get 'contact', to: 'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  #Pour la partie commentaires des blogs
  mount ActionCable.server => '/cable'

  #ca va dire que la default page c'est ca
  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
