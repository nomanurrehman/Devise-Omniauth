Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'site#index'
  get 'dashboard', to: 'dashboard#index', as: :dashboard_index_path
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth' }
end
