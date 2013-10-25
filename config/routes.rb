NestedResourceDemo::Application.routes.draw do
  resources :wikis do
    resources :articles
  end

  root to: 'wikis#index'
end
