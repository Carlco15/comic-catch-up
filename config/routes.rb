Rails.application.routes.draw do
  get 'static_pages/captain_america'

  get 'static_pages/thor'

  get 'static_pages/hulk'

  get 'static_pages/ant_man'

  get 'static_pages/black_panther'

  get 'static_pages/spider_man'

  get 'static_pages/iron_man'

  resources :sessions, only:[:new, :create, :destroy, :add]

  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'

  # get 'static_pages/home'

  # get 'static_pages/spotlight'


  root to: 'static_pages#home'
  match '/spotlight', to: 'static_pages#spotlight', via: 'get'
  match '/iron_man', to: 'static_pages#iron_man', via: 'get'
  match '/captain_america', to: 'static_pages#captain_america', via: 'get'
  match '/thor', to: 'static_pages#thor', via: 'get'
  match '/hulk', to: 'static_pages#hulk', via: 'get'
  match '/ant_man', to: 'static_pages#ant_man', via: 'get'
  match '/black_panther', to: 'static_pages#black_panther', via: 'get'
  match '/spider_man', to: 'static_pages#spider_man', via: 'get'

  resources :users
  resources :comics

  get '/comics/:id/add', to: 'comics#add', as: 'currentcomic'

  get '/comics/:id/read', to: 'comics#read', as: 'currentcomicread'


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
