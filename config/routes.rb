Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  # post 'articles/:id' => "articles#show"
  # post 'articles/channel'
  resources :articles , path_names: { new: 'make', edit: 'change' }#do
  #   get 'gold/:id' , action: :gold
  # 	member do
  # 		get 'old/:old_id' , action: :old 
  # 	end
  # 	get 'search' ,on: :collection
  # end


# direct :commentable do |model|
#   [ model, anchor: model.dom_id ]
# end
 
# direct :main do
#   { controller: 'pages', action: 'index', subdomain: 'www' }
# end
#   concern :commentable do
#   resources :comments
# end
# namespace :articles do
#   concerns :commentable
# end
# resources :private do
#   get 'post'
# end

# resources :photos do
#   collection do
#     get 'search'
#   end
# end
scope 'admin' do
  resources :photos
end
 
resources :photos
end
  