Rails.application.routes.draw do

#### Para el dashboard de admin
  get 'admin_files/user_list'
  get 'admin_files/asociative_user_list'
  get 'admin_files/user_create_background'
  get 'admin_files/asociative_user_create_background'


#### los resources
  resources :benefit_requesteds
  resources :milestones
  resources :personal_backgrounds
  resources :pamma_participations
  resources :family_groups
  resources :characterization_works
  resources :beneficiaries
  resources :postulations
  resources :admin_postulations
  resources :postulation_dates



  get 'user_postulations/list'

  get 'user_postulations/postulation_period'


  devise_for :admins

  # create via ajax en controlador
  devise_for :users, :controllers => {registrations: 'user/registrations'}
  devise_for :asociative_users, :controllers => { registrations: 'asociative_user/registrations' }


  # si es admin
  authenticated :admin do
    root "home#admin_dashboard", as: "admin_root"
    #### para crear/modificar usuarios desde el admin
    get 'home/create_files'

    resources :usuarios
    resources :usuarios_asociados
  end
  devise_scope :admin do
    get '/control' => 'devise/sessions#new'
  end

  #resources :user, only: [:show]
  # si es user
  authenticated :user do
    root "home#index_user_dashboard", as: "user_root"
    resources :usuarios, as: :user, only: [:update]
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




end
