Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :donations, only: %i[new create update show] do
    get "/deposit_option", to: "donations#deposit_option"

    get "/select_warehouse", to: "donations#select_warehouse"
    patch "/select_warehouse", to: "donations#update_warehouse"
    patch "/confirm", to: "donations#confirm"
    patch "/add_financial_amount", to: "donations#add_financial_amount"
  end
  #get "select_warehouse", to: "donations#select_warehouse"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/thank_you1", to: "donations#thank_you1"
  get "/success", to: "donations#success"

  # Defines the root path route ("/")
  # root "articles#index"
end
# Donations_Controller
# def select_warehouse
# @warehouse =  Warehouse.new
# end

# simple_form_for @warehouse
# button => méthode create du controller Warehouse, redirect_to => donation/:id/confirm
