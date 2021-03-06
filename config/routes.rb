Rails.application.routes.draw do
    
    root 'pages#home'
    
    get '/home', to: 'pages#home'
    

    resources :offers
    
    resources :users, except: [:new]
    get '/register', to: 'users#new'
    
    get '/login', to: "logins#new"
    post '/login', to: "logins#create"
    get '/logout', to: "logins#destroy"
    
    resources :cars 
    
    get '/cars/:id/clients', to: "cars#showclients", as:'cars_clients'
    
    resources :notifications
    get '/resumen_notificacion', to:'notifications#resumen_notificacion'
    get '/enviadas', to:'notifications#enviadas'
    
    resources :appusers, only: [:create,:index,:show,:destroy]
end
