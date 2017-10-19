Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, :path_names => { :sign_up => "register" }

		root :to => 'items#index'

   resources :items do
   	  root to: "items#index"
      get :upvote,     on: :member
      get :expensive,  on: :collection
   end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
