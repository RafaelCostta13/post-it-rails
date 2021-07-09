Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: "home#index"
  post '/search', to: "home#search_postit"
  post '/create', to: "home#create_post"
  delete '/destroy/:id', to: "home#destroy_postit"
end
