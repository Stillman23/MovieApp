Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :movies  do
    resources :tickets
  end 
  root 'movies#index'
  get 'new' => 'tickets#new'
  controller :static do
    get :BuyMovietickets
    get :comingsoon
    get :contact
  end
end
