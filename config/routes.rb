Rails.application.routes.draw do
  
  
  post 'jampad_details' => 'jampad_details#create_jampad_details'

  get 'details' => 'jampad_details#details'

  get 'jampad_home' => 'jampads#jampad_home'


  get 'jampads/:id/edit' => 'jampads#jampad_edit'


  
      patch 'jampads/:id' => 'jampads#jampad_update'
     put 'jampads/:id' => 'jampads#jampad_update' 

  get 'jampads/partner_with_us'

  post 'jampads' => 'jampads#create_partner'

  get 'jampad_show/:id' => 'jampads#jampad_show'

   get 'jampad_details/:id/edit' => 'jampad_details#edit' 
   
     patch 'jampad_details/:id' => 'jampad_details#update'
     put 'jampad_details/:id' => 'jampad_details#update'


  resources :posts , only: [:create , :destroy ]
  resources :userdetails , only: [:create , :new, :show, :edit , :update, :users ]
  
  devise_for :users

  post '/upload' => 'userdetails#upload'
  


  get '/home' => "home#index"
  get '/users' => 'userdetails#users'
  post '/follow' => 'follow#follow_toggle'
  
 
  get '/followers' => 'follow#followers'
  get '/following' => 'follow#following'

  root 'userdetails#new'

  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
