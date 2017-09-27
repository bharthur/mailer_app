Rails.application.routes.draw do
  root to: 'emails#index'
  post "/", to: 'emails#index'
end
