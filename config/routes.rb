Rails.application.routes.draw do
  get "users" => "users#users"
  get "users/new" => "users#new"
  get "users/1" => 'users#student'
  get 'users/1/edit' => 'users#edit'
  post "users" => "users#create"
  get 'users/total' => "users#total"
end
