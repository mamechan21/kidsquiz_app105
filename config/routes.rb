Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'
   get 'static_pages/about'
  resources :kidsquiz105s
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
