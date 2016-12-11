Rails.application.routes.draw do
  root to: 'visitors#new'#Any request to the application root(http://localhost:3000/) will be directed to the VistitorController new action.
end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
