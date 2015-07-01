Rails.application.routes.draw do

# get '/user/:id/events', to: 'user#events', as: 'user_events'
# get '/users/:users_id/events/new', to: 'events#new', as: 'new_user_events_path'
# get '/users/:users_id/events/edit', to: 'events#edit', as: 'edit_user_events_path'
# get '/users/:users_id/events', to: 'events#show'

get '/login', to: 'sessions#new'
post '/login', to: 'sessions#create'
delete '/logout', to: 'sessions#destroy'

resources :users, except: [:index, :edit]
get 'users/:name', to: 'users#show', as: 'name'

# resources :events
# get 'events/:title', to: 'events#show', as: 'title'

resources :events do
  resources :comments, shallow: true, only: [:create, :destroy]
end

root 'users#new'
end

# get '/login', to: 'sessions#new'
# post '/login', to: 'sessions#create'
# delete '/logout', to: 'sessions#destroy'


# only:[:new, :create, :show, :edit] do
#   resource :events, only:[:new, :show, :edit]
  # resources :comments

  # Post 'users/new', to: 'users#create'

  # post 'users/new', to: 'users#login'

  # get 'comments/new'

  # get 'comments/create'

  # get 'comments/index'

  # get 'comments/show'

  # get 'comments/edit'

  # get 'comments/update'

  # get 'comments/delete'

  # get 'comments/destroy'

  # get 'events/create'

  # get 'events/new'

  # get 'events/create'

  # get 'events/index'

  # get 'events/show'

  # get 'events/edit'

  # get 'events/update'

  # get 'events/delete'

  # get 'events/show'

  # get 'users/new'

  # get 'users/create'

  # get 'users/edit'

  # get 'users/update'

  # get 'sessions/create'

  # get 'sessions/destroy'

  # root 'users#new'
  # resources :users, :comments, :events
  # get 'comments/new'

  # get 'comments/create'

  # get 'comments/index'

  # get 'comments/show'

  # get 'comments/edit'

  # get 'comments/update'

  # get 'comments/delete'

  # get 'comments/destroy'

  # get 'events/create'

  # get 'events/new'

  # get 'events/create'

  # get 'events/index'

  # get 'events/show'

  # get 'events/edit'

  # get 'events/update'

  # get 'events/delete'

  # get 'events/show'

  # get 'users/new'

  # get 'users/create'

  # get 'users/edit'

  # get 'users/update'

  # get 'users/index'

  # get 'users/show'

  # get 'users/destroy'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

