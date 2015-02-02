Rails.application.routes.draw do
  root 'lists#index'
  get 'tasks', to: 'tasks#catalog'
  get 'notes', to: 'notes#catalog'

  resources :lists do
    resources :tasks, except: [:index, :show] do
      member do
        get :flop
      end
      resources :notes, except: :show
    end
  end

  get '*path', to: 'lists#index'

end
