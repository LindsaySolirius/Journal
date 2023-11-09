Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  #get '/entries/new'
  resources :entries, only: [:create, :new, :destroy, :edit, :update]
  root 'entries#index'
  
  
end
