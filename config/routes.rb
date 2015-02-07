Rails.application.routes.draw do
  root 'lists#index'
  resources :lists, shallow: true do
    resources :tasks do
      resources :notes
    end
  end
end
