Rails.application.routes.draw do
  # default_url_options :host => "example.com"
  root to: 'pages#home'
  devise_for :users, controllers: { confirmations: 'users/confirmations' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
