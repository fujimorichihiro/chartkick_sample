Rails.application.routes.draw do
  resources :yogurts
  root 'home#top'
  resources :spendings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
