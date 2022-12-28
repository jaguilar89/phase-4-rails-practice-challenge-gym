Rails.application.routes.draw do
  resources :memberships, only: [:create]
  resources :clients, only: [:show]
  resources :gyms, only: [:show, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

=begin
Routes:
Memberships: create
Gym: show, destroy
Client: show
=end
