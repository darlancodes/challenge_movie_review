Rails.application.routes.draw do

  devise_for :models
  devise_for :users

  resources :filmes do
    resources :reviews, except: [:show, :index]
    #permite que as reviews sejam exibidas na página do filmes
    #adiciona review como um sub recurso de filmes.
  end

  root 'filmes#index'

end
