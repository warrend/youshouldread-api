Rails.application.routes.draw do
	resources :books, only: [:index, :new, :show, :create, :destroy]

	root to: 'books#index'
end
