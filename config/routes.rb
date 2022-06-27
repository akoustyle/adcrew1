Rails.application.routes.draw do
  devise_for :users

  scope '(:locale)', locale: /fr|en/ do
    resources :talents, param: :slug, :trailing_slash => true, only: [:index, :show, :new, :create, :update, :edit]
    resources :campaigns, param: :slug, :trailing_slash => true, only: [:index, :show, :new, :create, :update, :edit]
    resources :contacts,:trailing_slash => true, only: [:create]
    root to: 'pages#home'
    # resources :campaigns
    # resources :talents
    # post '/contacts/', to: 'contacts#create'
    get 'team', to: 'pages#team', :trailing_slash => true, as: :team
    get 'contact', to: 'pages#contact', :trailing_slash => true, as: :contact
    get 'mentions', to: 'pages#mentions', :trailing_slash => true, as: :mentions

    delete '/talent/:slug', to: 'talents#destroy',:trailing_slash => true, as: 'destroy'
    delete '/campaign/:slug', to: 'campaigns#destroy', :trailing_slash => true, as: 'campaign_destroy'

    devise_scope :user do
      delete '/users/sign_out' => 'devise/sessions#destroy'
    end
    # post '/contacts/', to: 'contacts#create', as: 'contact'
    # get 'prod', to: 'pages#prod', as: :prod
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  end
end
