Rails.application.routes.draw do
  resources :colleges
  root 'colleges#index'
  get 'chat', to: 'chat#new'
  post 'chat', to: 'chat#create'
end

