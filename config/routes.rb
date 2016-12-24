Rails.application.routes.draw do
  resources :contacts, only: [:new, :create]#Add restriction 'only: [:new, :create]' to have only two routes as the 'contacts' resoursces, not the full seven.
  resources :visitors, only: [:new, :create]#Added this line to give the same resources (two routes: new & create) for the 'visitors'.
  root to: 'visitors#new'#The application home page.
end
