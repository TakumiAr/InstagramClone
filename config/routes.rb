Rails.application.routes.draw do
  resources :pictures do
    collection do
      post :confirm
    end
  end

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :favorites, only: [:create, :destroy]

  get '', to: 'pictures#index'


  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
