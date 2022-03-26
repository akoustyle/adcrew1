Rails.application.routes.draw do
  devise_for :users

<<<<<<< HEAD
  scope '(:locale)', locale: /fr|en/ do
    resources :talents
    resources :campaigns

=======
  # scope '(:locale)', locale: /fr|en/ do
    # get '/:locale' => 'talents#index'
>>>>>>> 8c133184c64ab67d11db1e9741e06f2d65ef08c5
    # get '/:locale' => 'talents#show'
    # get '/:locale' => 'campaigns#index'
    # get '/:locale' => 'campaigns#show'
    root to: 'pages#home'
<<<<<<< HEAD
    # resources :campaigns
    # resources :talents
=======
    resources :campaigns
    resources :talents
>>>>>>> 8c133184c64ab67d11db1e9741e06f2d65ef08c5
    get 'team', to: 'pages#team', as: :team
    get 'contact', to: 'pages#contact', as: :contact
    get 'mentions', to: 'pages#mentions', as: :mentions
    # get 'prod', to: 'pages#prod', as: :prod
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
<<<<<<< HEAD
  end
=======
  # end
>>>>>>> 8c133184c64ab67d11db1e9741e06f2d65ef08c5
end
