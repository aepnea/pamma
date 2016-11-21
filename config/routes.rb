Rails.application.routes.draw do

  devise_for :asociative_users
  devise_for :admins

  # create via ajax en controlador
  devise_for :users, :controllers => {registrations: 'user/registrations'}

  root :to => "home#index"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

  # si es admin
  authenticated :admin do
    root "home#admin", as: "admin_root"
  end

  # si es user
  authenticated :user do
    root "home#index_user", as: "authenticated_user_root"
  end

  # si es asociado
  authenticated :asociative_user do
    root "home#index_user_asociative",  as: "authenticated_user_asociative_root"
  end

  # si no esta logeado

      root 'home#index', as: 'unregistered_root'




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
