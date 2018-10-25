Rails.application.routes.draw do

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :portfolios, except: [:show]  #Toutes les ressources sauf le show qu'on fait nous meme

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

  #tudo part: ca va dire que la derfault page c'est ca
  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
