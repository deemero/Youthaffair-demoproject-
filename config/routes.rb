Rails.application.routes.draw do

 get :contact, to: 'visitors#contact'
 post :contact, to: 'visitors#send_contact'
 get 'donations/about'
 get 'pages/about'
 get 'jurutera/bidang'
 get 'jurutera/peluang'
 get 'jurutera/persekitaran'
 get 'jurutera/testimoni'

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "welcome#index"


    resources :visitors
    resources :donations
    resources :pages
    resources :spm
    resources :jurutera
    resources :guides
    resources :contacts , only: [:new, :create, :index]
    resources :posts do
    resources :comments

  end
end
