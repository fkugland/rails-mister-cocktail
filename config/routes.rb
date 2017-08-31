Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  Rails.application.routes.draw do
    resources :cocktails do
      resources :doses, only: [ :create, :edit ]
    end
    resources :doses, only: [ :destroy ]
    resources :ingredients, only: [ :index ]
    root "cocktails#index"
  end
end
