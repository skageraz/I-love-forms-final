Rails.application.routes.draw do

  get '/', to: 'static_pages#home'
  get '/contact', to: 'static_pages#contact'
  get '/about', to: 'static_pages#about'
  get 'about/francois', to: 'static_pages#francois'
  get 'about/ani', to: 'static_pages#ani'
  get 'about/titouan', to: 'static_pages#titouan'
  get 'about/JR', to: 'static_pages#JR'

  get '/new', to: 'users#new'
  get '/form_tag', to: 'users#form_tag'
  post '/form_tag', to: 'users#create2'
  post '/new', to: 'users#create'
  get '/form_for', to: 'users#form_for'
  post '/form_for', to: 'users#create3'
  get '/error', to: 'users#error', as: 'error'
  get '/error2', to: 'users#error2', as: 'error2'
  get '/users/:username', to: 'users#show', as: 'show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
