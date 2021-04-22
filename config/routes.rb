Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    # collectives
    collection do
      get :top
    end
    member do
      get :chef
    end
    resources :reviews, only: [ :new, :create ]
  end
end

# top_restaurants GET    /restaurants/top(.:format)                                 restaurants#top
# restaurant_reviews POST   /restaurants/:restaurant_id/reviews(.:format)           reviews#create
# new_restaurant_review GET    /restaurants/:restaurant_id/reviews/new(.:format)    reviews#new
