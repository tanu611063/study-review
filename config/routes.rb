Rails.application.routes.draw do
  devise_for :users
  root to: 'words#index'
  namespace :words do
    # namespaceは先に記述。エラー防止
    resources :searches, only: :index
  end
  resources :words do
    resources :comments, only: :create
    resource :favorites, only: [:create, :destroy]
  end
  resources :users, only: :show
end