Rails.application.routes.draw do
  root 'work_orders#index'
  get 'work_orders/index'
  get 'work_orders/input'
  get 'technicians/index'
  get 'technicians/input'
  get 'locations/index'
  get 'locations/input'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
