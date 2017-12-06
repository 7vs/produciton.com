Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { :omniauth_callbacks => 'callbacks' }

  root to: 'checklists#index'
  resources :checklists
  resources :checklist_items, only: [:update]
  resources :checklist_shares, only: [:create]
end
