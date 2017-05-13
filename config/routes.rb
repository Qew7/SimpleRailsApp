Rails.application.routes.draw do
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
