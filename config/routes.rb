Rails.application.routes.draw do

  #首頁
  #介紹
  #加入會員
  #商品頁
  #品牌頁
  
  root to: "pages#home"
  get '/about',to: 'pages#about'
  get '/contact', to: 'pages#contact'

  resources :brands, only: [:show, :index]
  resources :products, only: :show
  resources :subscribers, only: [:new, :create]

  
  namespace :admin do  
    get "/" => "administrators#new_session"
    post "/" => "administrators#create_session"
    delete "/" => "administrators#destroy_session"

    resources :brands do
      resources :products, shallow: true
    end
    resources :subscribers, only: [:index, :destroy]

    get 'pages/search'
    post 'products/search'
  end

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
