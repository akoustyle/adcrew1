Rails.application.routes.draw do
  devise_for :users

  # scope '(:locale)', locale: /fr|en/ do
    # get '/:locale' => 'talents#index'
    # get '/:locale' => 'talents#show'
    # get '/:locale' => 'campaigns#index'
    # get '/:locale' => 'campaigns#show'
    root to: 'pages#home'
    resources :campaigns, only: [:destroy, :new, :edit, :update, :show, :index]
    resources :talents
    get 'team', to: 'pages#team', as: :team
    get 'contact', to: 'pages#contact', as: :contact
    # get 'prod', to: 'pages#prod', as: :prod
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # end
end
