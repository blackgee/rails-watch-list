Rails.application.routes.draw do

  resources :lists do
    resources :bookmarks, only: [:new, :create]

  end

  resources :bookmarks, only: [:destroy]

  # get "/lists/:list_id/bookmarks/new", to: "bookmarks#new", as: :new_bookmark

  # post "/lists/:list_id/bookmarks", to: "bookmarks#create"

  # get "/lists", to: "lists#index", as: :lists

  # get "/lists/new", to: "lists#new", as: :new_list


  # get "/lists/:id", to: "lists#show", as: :list

  # post "/lists", to: "lists#create"

  # delete "bookmarks/:id", to: "bookmarks#destroy"



  # get "/lists/:id/edit", to: "lists#edit", as: :edit_list

  # patch "/lists/:id", to: "lists#update"
end
