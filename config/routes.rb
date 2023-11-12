Rails.application.routes.draw do
  root to:'homes#top'
  get 'top'=> 'homes#top'
  get 'books'=> 'books#index'
  post 'books'=> 'books#create'
  patch 'books/:id'=>'books#update',as: 'update_book'
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
