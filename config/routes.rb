Rails.application.routes.draw do
  get 'tweets/index'
  get 'tweets/piano'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "tweets#index"
  
  resources :tweets, only: [:index, :new, :create, :piano, :guitar, :bass, :violin, :others] do
    collection do
      get 'piano'
      get 'guitar'
      get 'bass'
      get 'violin'
      get 'others'
    end
  end
  resources :instruments, only: [:index, :new, :create, :show]
 

end
