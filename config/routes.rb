Rails.application.routes.draw do



  resources :benefit_requesteds
  resources :milestones
  resources :personal_backgrounds
  resources :pamma_participations
  resources :family_groups
  resources :characterization_works
  resources :beneficiaries
  resources :postulations


  
  get 'user_postulations/list'

  get 'user_postulations/postulation_period'

  #resource :postulation
  devise_for :admins

  # create via ajax en controlador
  devise_for :users, :controllers => {registrations: 'user/registrations'}
  devise_for :asociative_users, :controllers => { registrations: 'asociative_user/registrations' }

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

  # si es admin
  authenticated :admin do
    root "home#admin_dashboard", as: "admin_root"
  end
  devise_scope :admin do
    get '/control' => 'devise/sessions#new'
  end

  #resources :user, only: [:show]
  # si es user
  authenticated :user do
    root "home#index_user_dashboard", as: "user_root"
    resources :usuarios, as: :user, only: [:show,:update]
  end

  # si es asociado
  authenticated :asociative_user do
    root "home#index_user_asociative_dashboard", as: "asociative_user_root"
    resources :usuarios_asociados, as: :asociative_user, only: [:show,:update]
  end

  # si no esta logeado
  unauthenticated :admin do
  unauthenticated :user do
  unauthenticated :asociative_user do
    root to: 'home#index'
  end
  end
  end



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
