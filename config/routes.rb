Rails.application.routes.draw do
  resources :lists do
    resources :tasks, shallow: true
  end

  resources :tasks, except: [:index] do
    resources :notes, shallow: true, only: [:edit, :create, :update, :destroy]
    member do
      put 'toggle_complete'
    end
  end
end
