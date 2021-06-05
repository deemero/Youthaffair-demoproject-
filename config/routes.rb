Rails.application.routes.draw do

  # post 'contacts#create'
  #
  # root to "contact#create"

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "welcome#index"



    resources :jurutera
    resources :guides
    resources :contacts , only: [:new, :create, :index]
    resources :posts do
    resources :comments
  end
end
