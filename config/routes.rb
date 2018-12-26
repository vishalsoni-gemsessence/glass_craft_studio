Rails.application.routes.draw do
  mount SolidusPaypalBraintree::Engine, at: '/solidus_paypal_braintree'
  mount Ckeditor::Engine => '/ckeditor'
  # This line mounts Solidus's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Solidus relies on it being the default of "spree"
  mount Spree::Core::Engine, at: '/'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #   get '/about_us', :to => 'spree/about#index', :as => :about_us
  Spree::Core::Engine.routes.draw do
    namespace :admin do
      filter :locale
      get '/search/countries', to: "search#countries", as: :search_countries
      resources :contact_us_emails do
        member do
          post :clone
        end
      end

      resources :contacts
    end

    resources :contacts

    get '/order_history', to: 'users#order_history', as: 'order_history'
  end
end
