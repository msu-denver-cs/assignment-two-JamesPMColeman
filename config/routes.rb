Rails.application.routes.draw do
  resources :makes do
    collection do
      get 'search'
    end
  end
  resources :parts do
    collection do
      get 'search'
    end
  end
  resources :cars do
    collection do
      get 'search'
    end
  end

  resources :cars do
    get :autocomplete_cars_model, on: :collection
    collection do
      get 'search'
    end
  end
  resources :parts do
    get :autocomplete_part_name, on: :collection
    collection do
      get 'search'
    end
  end
  resources :makes do
    get :autocomplete_make_name, on: :collection
    collection do
      get 'search'
    end
  end

  resources :parts
  resources :cars
  resources :makes


  root              :to => 'cars#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
