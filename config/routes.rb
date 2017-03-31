Rails.application.routes.draw do
    devise_for :users
    resources :sellers do
        resources :reviews
    end
    root 'sellers#index'

end
