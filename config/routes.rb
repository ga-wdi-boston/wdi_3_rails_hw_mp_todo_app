Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists, shallow: true do
    resources :groups do
      resources :tasks do
        resources :notes
      end
    end
  end
end
