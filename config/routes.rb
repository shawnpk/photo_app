Rails.application.routes.draw do
  devise_for :members

  resources :members, only: [] do
    get :dashboard, on: :member
  end

  resources :albums

  root 'home#site_index'
end
