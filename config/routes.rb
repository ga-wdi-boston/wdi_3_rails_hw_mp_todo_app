Rails.application.routes.draw do
  root 'lists#index'
  get 'tasks', to: 'tasks#catalog'
  get 'notes', to: 'notes#catalog'

  resources :lists do
    resources :tasks, except: [:index, :show] do
      member do
        get :flop
      end
    end
  end

  resources :tasks, except: [:index, :show] do
    resources :notes, except: :show
  end

  resources :notes, except: :show

  # get '*path', to: 'lists#index'

end
