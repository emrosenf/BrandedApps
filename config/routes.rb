Appdoc::Application.routes.draw do

  resources :apps do
    member do
      get 'analytics'
      get 'settings'
      get 'messages'
      get 'complete_setup'
      post 'complete_setup' => "apps#post_complete_setup", :as => "finalize"
      post 'messages' => "apps#messages_create", :as => "messages_create"
    end
  end
  
  namespace :settings do
    get 'login'
    get 'profile'
    get 'billing'
  end
  
  get "dashboard/index"

  match "ajax/:action(/:id)", :controller => "ajax", :via => [:get, :post]
  get "signup" => "signup#index", :as => "signup"
  
  post "signup/create" => "signup#create", :as => "signup_create"
  get "signup/choose" => "signup#choose", :as => "signup_choose"
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  
  get "l/:id" => "ajax#app_link"
  
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
