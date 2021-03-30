Rails.application.routes.draw do
  # default_url_options :host => "example.com"
  root to: 'pages#home'
  devise_for :users, controllers: { confirmations: 'users/confirmations' }
  resources :todos do
    collection  do
      patch :sort
    end
  end
end