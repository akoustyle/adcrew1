Rails.application.routes.draw do
  devise_for :users

  scope '(:locale)', locale: /fr|en/ do
    resources :talents, param: :slug, only: [:index, :show, :new, :create, :update, :edit]
    resources :campaigns, param: :slug, only: [:index, :show, :new, :create, :update, :edit]
    resources :contacts, only: [:create]

    # get '/:locale' => 'talents#show'
    # get '/:locale' => 'campaigns#index'
    # get '/:locale' => 'campaigns#show'
    root to: 'pages#home'
    # resources :campaigns
    # resources :talents
    # post '/contacts/', to: 'contacts#create'
    get 'team', to: 'pages#team', as: :team
    get 'contact', to: 'pages#contact', as: :contact
    get 'mentions', to: 'pages#mentions', as: :mentions

    delete '/talent/:slug', to: 'talents#destroy', as: 'destroy'
    delete '/campaign/:slug', to: 'campaigns#destroy', as: 'campaign_destroy'

    devise_scope :user do
      delete '/users/sign_out' => 'devise/sessions#destroy'
    end
    # post '/contacts/', to: 'contacts#create', as: 'contact'
    # get 'prod', to: 'pages#prod', as: :prod
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  end
end
