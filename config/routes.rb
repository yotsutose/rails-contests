Rails.application.routes.draw do
  get 'contests', to:'contests#index'
  get 'contests/index'
  get 'contests/show'
  get 'contests/add'
  get 'contests/edit'
  post 'contests/add'
  get 'contests/:id', to:'contests#show'


  devise_for :users
  get '', to:'pages#index'
  get 'pages/index'
  
  get 'submissions', to:'submissions#index'
  get 'submissions/index'
  get 'submissions/show'
  get 'submissions/add'
  post 'submissions/add'
  get 'submissions/:id', to:'submissions#show'

  get 'problems', to:'problems#index' 
  get 'problems/index'
  get 'problems/show'
  get 'problems/add'
  get 'problems/edit'
  post 'problems/show'
  post 'problems/add_submission'
  get 'problems/:id', to:'problems#show'

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
