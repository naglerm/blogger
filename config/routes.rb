Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #this file is in the config/ directory. the following line will make sure our website's root page is no longer the "rails up and running" page
  root to: 'articles#index'
  resources :articles do
    resources :comments
    #articles are a resource of our application,and comments are a nested resource (resource of an article)
  end
end
