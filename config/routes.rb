Rails.application.routes.draw do
  root 'welcome#index'

  namespace :admin do
    root 'profiles#index'

    controller :sessions do
      get 'login' => :new
      post 'login' => :create
      delete 'logout' => :destroy
    end

    resources :users, only: [:new, :create, :edit, :update, :show, :destroy]
    resources :profiles
    resources :experience_groups
    resources :experiences, only: [:new, :create, :edit, :update, :show, :destroy]
    resources :education_groups
    resources :educations, only: [:new, :create, :edit, :update, :show, :destroy]
  end

  ##########################################
  ##      Vanity routes and redirects     ##
  ##########################################
  get '/login', to: redirect('/admin/login')

  # Redirect routes from old website to equivalent locations on new site
  get '/experience', to: redirect('/#experience')
  get '/education', to: redirect('/#education')
  get '/contact', to: redirect('/')
end
