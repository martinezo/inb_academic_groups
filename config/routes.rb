Rails.application.routes.draw do

  resources :member_links
  resources :member_publications
  resources :group_members
  resources :links
  resources :publications
  resources :groups
  get 'groups/delete/:id' => 'groups#delete', as: 'group_delete'
  namespace :catalogs do
    resources :pub_types
    get 'pub_types/delete/:id' => 'pub_types#delete', as: 'pub_type_delete'
  end
  namespace :catalogs do
    resources :statuses
  end
  namespace :catalogs do
    resources :member_types
    get 'member_types/delete/:id' => 'member_types#delete', as: 'member_type_delete'
  end
  namespace :catalogs do
    resources :locations
    get 'locations/delete/:id' => 'locations#delete', as: 'location_delete'
  end
  namespace :catalogs do
    resources :departments
    get 'departments/delete/:id' => 'departments#delete', as: 'department_delete'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
