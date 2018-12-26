Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defautls: {format: :json} do
    namespace :v1 do
      get '/logout' => 'users#logout'
      post '/facebook' => 'users#facebook'
      post '/payments' => 'users#add_card'
      get '/listings' => 'rooms#your_listings'

      resources :rooms do
        member do
          get '/reservations' => 'reservations#reservations_by_room'
        end
      end
      resources :reservations do
        member do
          post '/approve' => 'reservations#approve'
          post '/decline' => 'reservations#decline'
        end
      end
    end
  end
end
