Rails.application.routes.draw do
  root to: 'static_pages#home'
  get '/contact', to: 'static_pages#contact'
  get '/about', to: 'static_pages#about'
  get 'about/francois', to: 'static_pages#francois'
  get 'about/ani', to: 'static_pages#ani'
  get 'about/titouan', to: 'static_pages#titouan'
  get 'about/JR', to: 'static_pages#JR'
  get '/new', to: 'users#new'
  post '/new', to: 'users#create'
  get '/error', to: 'users#error', as: 'error'
  get '/error2', to: 'users#error2', as: 'error2'
  get '/users/:username', to: 'users#show', as: 'show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
