Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :articles
  # only: [:index, :show, :new, :create, :edit, :update]
  # delete 'tasks/:id', to: 'tasks#destroy', as: :delete_article
end
