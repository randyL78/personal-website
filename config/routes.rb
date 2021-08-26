Rails.application.routes.draw do
  root 'welcome#index'

  namespace :admin do
    root 'dashboard#index'

    controller :sessions do
      get 'login' => :new
      post 'login' => :create
      delete 'logout' => :destroy
    end

    resources :users, only: [:new, :create, :edit, :update, :show, :destroy]
    resources :profiles
  end
end
