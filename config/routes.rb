FilesForEmail::Application.routes.draw do


  namespace :admin do
    root :to => 'welcome#index'
    resources :data_files
    resources :requests, :only => :index
    resources :users, :only => [:index, :create, :new, :destroy]
  end

  devise_for :users, :skip => :registrations
  resources :requests, :only => :create


  root :to => "welcome#index"

end