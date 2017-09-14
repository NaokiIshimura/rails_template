Rails.application.routes.draw do
  get 'logger/log_puts'
  get 'logger/debug'
  get 'logger/info'
  get 'logger/warn'
  get 'logger/error'
  get 'logger/fatal'
  get 'logger' => 'logger#index'

  get 'validation/form'
  post 'validation/form'

  get 'form_object/input'

  get 'form_object/output' => 'form_object#input'
  post 'form_object/output'

  get 'form/input'

  get 'form/output' => 'form#input'
  post 'form/output'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  get 'home'  => 'static_pages#home'
  get 'about' => 'static_pages#about'
  get 'help'  => 'static_pages#help'
end
