Rails.application.routes.draw do
  devise_for :users
  get 'tweets/index'
  get 'tweets/piano'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "tweets#index"
  
  resources :tweets, only: [:index, :new, :create, :show, :piano, :guitar, :bass, :violin, :others] do
    collection do
      get 'piano'
      get 'guitar'
      get 'bass'
      get 'violin'
      get 'others'
    end
  end
  # resources :instruments, only: [:index, :new, :create, :show]
 

end
