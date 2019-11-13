Rails.application.routes.draw do
  root to: "products#index"
  devise_for :users, controllers: { registrations: 'users/registrations' }
  devise_scope :user do
    post 'users/sign_up', to: 'devise/registrations#new'
    get 'users/new2', to: 'devise/registrations#new2', as: :sms_send_user_registration
    post 'users/new2(.:format)', to: 'devise/registarations#new2'
    get 'users/new2_2', to: 'devise/registrations#new2_2', as: :sms_receive_user_registration
    post 'users/new2_2(.:format)', to: 'devise/registarations#new2_2'
    get 'users/new3', to: 'devise/registrations#new3', as: :personal_information_user_registration
    post 'users/new3(.:format)', to: 'devise/registarations#new3'
    get 'users/new4', to: 'devise/registrations#new4', as: :credit_user_registration
    post 'users/new4(.:format)', to: 'devise/registarations#new4'
    get 'users/new5', to: 'devise/registrations#new5', as: :sinup_user_registration
    post 'users/new5(.:format)', to: 'devise/registarations#new5'
  end

  
  resources :products, only: [:new, :create, :show] do
    member do
      post "purchase"
    end
  end


  resources :credit_cards, only: [:new, :show] do
    collection do
      get 'registration'
    end
  end

  resources :users, only: [:show] do
    member do
      get "likes", "listings", "in_progress", "completed", "purchase", "purchased"

    end
  end
end
