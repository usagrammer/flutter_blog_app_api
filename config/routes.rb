Rails.application.routes.draw do
  resources :comments
  resources :articles
  resources :categories

  # match '*path' => 'options_request#preflight', via: :options
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
