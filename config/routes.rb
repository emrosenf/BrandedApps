Appdoc::Application.routes.draw do

  namespace :feeds do
    get "signup" => "signup#index", :as => "signup"
    get "dashboard" => "dashboard#index", :as => "dashboard"
    resources :users
    resources :lists do 
      post "messages" => "lists#create_message", :on => :member
      get "messages", :on => :member
    end
  end

  namespace :api do
    resources :lists do
      member do
        post 'subscribe'
        post 'unsubscribe'
      end
    end
    resources :subscribers do
      collection do
        get 'lists'
        post 'add_contact_info'
      end
    end
    resources :users do
      member do 
        get 'lists'
      end
    end
  end


  resources :apps do
    member do
      get 'analytics'
      get 'settings'
      get 'messages'
      get 'complete_setup'
      put 'update_image' => 'apps#update_image', :as => "update_image"
      post 'complete_setup' => "apps#post_complete_setup", :as => "finalize"
      post 'messages' => "apps#messages_create", :as => "messages_create"
      post 'register_device' => "apps#register_device"
    end
  end
  
  namespace :settings do
    get 'login'
    get 'profile'
    get 'billing'
  end
  
  get "dashboard/index", :as => "dashboard"

  match "ajax/:action(/:id)", :controller => "ajax", :via => [:get, :post]
  get "signup" => "signup#index", :as => "signup"
  
  post "signup/create" => "signup#create", :as => "signup_create"
  get "signup/choose" => "signup#choose", :as => "signup_choose"
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  
  get "l/:id" => "ajax#app_link", :as => "app_link"
  
  resources :users
  resources :sessions

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'home#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
