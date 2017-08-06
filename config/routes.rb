Rails.application.routes.draw do
  get 'form/input'

  get 'form/output' => 'form#input'
  post 'form/output'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  get 'home'  => 'static_pages#home'
  get 'about' => 'static_pages#about'
  get 'help'  => 'static_pages#help'
end
