Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # This means these ruotes.
  #1. get 'blogs/show'
  #2. get 'blogs/index'
  #3. get 'blogs/new'
  #4. get 'blogs/edit'
  resources :blogs
  
end
