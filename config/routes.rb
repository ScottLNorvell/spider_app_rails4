SpiderAppRails4::Application.routes.draw do
  root to: 'spiders#index'

  resources :spiders
  resources :webs
  resources :flies
end
