Rails.application.routes.draw do
<<<<<<< HEAD
  root 'static_pages#home'
=======
  devise_for :users
  root  'static_pages#home'
>>>>>>> task1

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
