Rails.application.routes.draw do
  resources :contacts, only: [:new, :create]#Add restriction 'only: [:new, :create]' to have only two routes.  
  root to: 'visitors#new'
end
