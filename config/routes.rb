Rails.application.routes.draw do
  get 'admin' => 'admin#index'

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy

  end

  controller :users do
  post 'check/:uid' => :check, :as => 'check_user'
  end
  resources :users
  resources :orders
  resources :line_items
  post 'decrease/:id' => 'line_items#decrease_then_create', :as => 'decrease_then_create'
  resources :carts
  get 'store/index'
  resources :products do
    get :who_bought, on: :member
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
