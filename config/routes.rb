Rails.application.routes.draw do
  root 'lists#index'
  resources :lists, only: [:index, :new, :show, :create, :destroy] do
    resources :bookmarks, only: [:new, :index, :create]
  end
  resources :bookmarks, only: [:destroy]
end
