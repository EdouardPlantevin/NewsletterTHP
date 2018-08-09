Rails.application.routes.draw do
  get 'pages/bravo'
  resources :charges, only: [:new, :create]
  root 'charges#new'
end
