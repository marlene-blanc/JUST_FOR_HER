Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :donations, only: %i[new create show]
  get "/financial_show", to: "donations#financial_show" do
    get "/deposit_option", to: "donations#deposit_option"
    get "/select_warehouse", to: "donations#select_warehouse"
    patch "/select_warehouse", to: "donations#update_warehouse"
    patch "/confirm", to: "donations#confirm"
  end

  get "/thank_you1", to: "donations#thank_you1"
end

# simple_form_for @warehouse
# button => méthode create du controller Warehouse, redirect_to => donation/:id/confirm
