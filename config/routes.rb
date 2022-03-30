Rails.application.routes.draw do
  devise_for :users

  scope '(:locale)', locale: /fr|en/ do
    resources :talents
    resources :campaigns

    # get '/:locale' => 'talents#show'
    # get '/:locale' => 'campaigns#index'
    # get '/:locale' => 'campaigns#show'
    root to: 'pages#home'
    # resources :campaigns
    # resources :talents
    get 'team', to: 'pages#team', as: :team
    get 'contact', to: 'pages#contact', as: :contact
    get 'mentions', to: 'pages#mentions', as: :mentions
    # get 'prod', to: 'pages#prod', as: :prod
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
end
