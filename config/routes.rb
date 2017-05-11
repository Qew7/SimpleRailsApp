Rails.application.routes.draw do
  # get "genres/index"

  # get "genres/show"

  # get "genres/new"

  # get "genres/edit"

  # get "genres/create"

  # get "genres/update"

  # get "genres/destroy"

  # get 'directors/index'

  # get 'directors/show'

  # get 'directors/new'

  # get 'directors/edit'

  # get 'directors/create'

  # get 'directors/update'

  # get 'directors/destroy'

  # get 'actors/index'

  # get 'actors/show'

  # get 'actors/new'

  # get 'actors/edit'

  # get 'actors/create'

  # get 'actors/update'

  # get 'actors/destroy'

  devise_for :users

  resources :directors do
    collection do
      get "search"
    end
  end

  resources :actors do
    collection do
      get "search"
    end
  end

  resources :genres do
    collection do
      get "search"
    end
  end

  resources :movies do
    collection do
      get "search"
    end
  end
  root "movies#index"
end
