Rails.application.routes.draw do

  root to:'static_pages#home'

  resources :events do

    collection do
      get "upcoming", to: 'events#upcoming'
    end

    member do
      get "planner", to: 'events#planner'
    end

    resources :comments, only: [:new, :create ]

  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
