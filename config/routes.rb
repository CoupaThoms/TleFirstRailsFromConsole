Rails.application.routes.draw do

  resources :portfolios, except: [:show]  #Toutes les ressources sauf le show qu'on fait nous meme

  get 'mon-portfolio/:id', to: 'portfolios#show', as: 'portfolio_show' #cet alias portfolio_show est appele depuis la vue dans index de portfolio

  # get 'pages/home'  #this was there but we commented it
  # get 'pages/about'
  get 'about-thomas', to: 'pages#about'

  # get 'pages/contact'
  get 'contact', to: 'pages#contact'

  resources :blogs

  #tudo part: ca va dire que la derfault page c'est ca
  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
