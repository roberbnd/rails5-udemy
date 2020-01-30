Rails.application.routes.draw do
  resources :portafolios, except: [:show]
  get 'portafolio/:id', to: 'portafolios#show', as: 'portafolio_show'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  resources :blogs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
end
