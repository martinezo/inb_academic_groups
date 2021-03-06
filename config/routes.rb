Rails.application.routes.draw do

  devise_for :users, class_name: "Admin::User"
  root to: 'groups#index'

  namespace :catalogs do
    resources :levels
    get 'levels/delete/:id' => 'levels#delete', as: 'level_delete'
  end

  resources :member_links
  resources :member_publications
  resources :group_members
  get 'group_members/delete/:id' => 'group_members#delete', as: 'group_member_delete'
  get 'group_members/fields_setup/:id' => 'group_members#fields_setup', as: 'fields_setup'
  get 'group_members/switch_status/:id' => 'group_members#switch_status', as: 'group_member_switch_status'
  get 'group_members/add_link/:id', to: 'group_members#add_link', as: 'group_member_add_link'
  get 'group_members/destroy_link/:id', to: 'group_members#destroy_link', as: 'group_member_destroy_link'
  get 'group_members/add_publication/:id', to: 'group_members#add_publication', as: 'group_member_add_publication'
  get 'group_members/destroy_publicacion/:id', to: 'group_members#destroy_publication', as: 'group_member_destroy_publication'
  get 'group_members/by_group/:group_id' => 'group_members#by_group', as: 'by_group'
  resources :links
  resources :publications
  resources :groups
  get 'groups/delete/:id' => 'groups#delete', as: 'group_delete'
  get 'groups/by_department/:department_id' => 'groups#by_department', as: 'by_department'
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
  namespace :admin do
    resources :users
    get 'not_authorized' => 'users#not_authorized', as: 'user_not_authorized'
    get 'users/delete/:id' => 'users#delete', as: 'user_delete'
    get 'users/groups_admin/:id' => 'users#edit_groups_admin', as: 'edit_groups_admin'
    post 'users/groups_admin/:id' => 'users#update_groups_admin', as: 'update_groups_admin'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
