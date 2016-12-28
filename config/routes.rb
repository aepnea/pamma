Rails.application.routes.draw do



  get 'admin_files/user_list'

  get 'admin_files/asociative_user_list'

  get 'admin_files/user_create_background'

  get 'admin_files/asociative_user_create_background'

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

  # si es user
  authenticated :user do
    root "home#index_user_dashboard", as: "user_root"
  end

  # si es asociado
  authenticated :asociative_user do
    root "home#index_user_asociative_dashboard", as: "asociative_user_root"
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
