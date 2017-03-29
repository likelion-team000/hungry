Rails.application.routes.draw do
  devise_for :users
    resources :sellers
    root 'sellers#index'

end
