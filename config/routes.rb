Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :comm013_website
  # Apply root to home
  root to: 'comm013_website#home'
  
  # set the extensions to the correspondent page
  match '/home', to: 'comm013_website#home', via: [:get]
  match '/about', to: 'comm013_website#abouttheclub', via: [:get]
  match '/how_to_join', to: 'comm013_website#howtojoin', via: [:get]
  match '/what_you_need', to: 'comm013_website#whatyouneed', via: [:get]
  match '/club_matters', to: 'comm013_website#clubmatters', via: [:get]
  match '/directions', to: 'comm013_website#howtogetthere', via: [:get]
  match '/extraLinks', to: 'comm013_website#links', via: [:get]

  resources :events
  get 'events' => 'events#index' 
  
  resources :newsletters
  
  get'newsletters'=> 'newsletters#index'

  resources :lawnbookings
  
  get'lawnbookings'=> 'lawnbookings#index'
  match "booking_lawn" => "lawnbookings#booking_lawn", via: :post
  match "/get_booking" => "lawnbookings#get_booking", via: :get
  
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
