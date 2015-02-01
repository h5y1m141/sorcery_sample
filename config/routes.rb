SorcerySample::Application.routes.draw do
  use_doorkeeper
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"
  resources :users
  resources :sessions
  get "secret" => "welcome#secret", :as => "secret"
  root :to => "welcome#index"
end
