Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "shows#index"

  resources :shows
  get "/search" => "shows#search", as: 'search_media'
end
