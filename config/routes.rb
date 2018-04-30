Rails.application.routes.draw do
  devise_for :users, :controllers => {
     :registrations => "registrations"
   }
  resources :users, only: [:show]
  root  'static_pages#home'
  get 'users/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
