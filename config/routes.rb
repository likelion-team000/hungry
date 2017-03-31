Rails.application.routes.draw do
  devise_for :users
    resources :sellers
    # root 'sellers#index'
    root 'sellers#main'
  
	get 'sellers/main'
	get 'sellers/data'
	get 'sellers/index'
	get 'sellers/result'
	get 'result' => 'sellers#result'
	get 'main' => 'sellers#main'
	get 'index' => 'sellers#index'
	  
	post 'upload' => 'sellers#write'

end
