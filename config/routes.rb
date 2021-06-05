Rails.application.routes.draw do


  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "welcome#index"

    resources :contacts, only: [:new, :create]
    resources :posts do
    resources :comments
  end
end


# <h1 class="page title">Say hello</h1>
#
# <div class="skinny_wrapper warrper_padding">
#   <label>Name</label><br>
#   <input type="text">
#
# <br>
#
#   <label>Email</label><br>
#   <input type="text">
#
# <br>
#
#   <label>Message</label><br>
#   <input type="text">
#
#
# <br>
#
# <input type="submit" name="button" value="send massage">
#
#
# </div>
