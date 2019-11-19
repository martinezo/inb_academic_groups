Rails.application.routes.draw do
  resources :member_links
  resources :member_publications
  resources :group_members
  resources :links
  resources :publications
  resources :groups
  namespace :catalogs do
    resources :pub_types
  end
  namespace :catalogs do
    resources :statuses
  end
  namespace :catalogs do
    resources :member_types
  end
  namespace :catalogs do
    resources :locations
    get 'locations/delete/:id' => 'locations#delete', as: 'location_delete'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
