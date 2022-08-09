Rails.application.routes.draw do
  get 'prototype/index'
  root to: "prototypes#index"
  get 'prototypes/new', to: 'prototypes#new'
end
