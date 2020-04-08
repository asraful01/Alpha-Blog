Rails.application.routes.draw do

root 'pages#home'
get 'about', to: 'pages#about'
resources :articles

get 'signup', to: 'users#new'
resources :users, except: [:new]

get 'login', to: 'sessions#new'

post 'login', to: 'sessions#create'

delete 'logout', to: 'sessions#destroy'
resources :categories, except: [:destroy]

resources :users do
  member do
    get :confirm_email
  end
end


end
