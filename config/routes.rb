Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  root 'users#index'
  resources :users
  resources :analysis_docs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
