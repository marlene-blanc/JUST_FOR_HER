class DonationsController < ApplicationController

  def new
    @products = Product.all
    @donation = Donation.new
    @products.build
  end

  def create
    @donation = Donation.new
    @donation.products = Product.find(params["products"].values.map(&:to_i))
    @donation.user = current_user

    if @donation.save!
      redirect_to donation_select_warehouse_path(@donation)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def select_warehouse
    @donation = Donation.find(params[:donation_id])
    @warehouses = Warehouse.all
  end

  def update_warehouse
    @warehouse = Warehouse.new(warehouse_params)
    @warehouse.update(params[:donation_id])

  end

  def list
    @products = Product.all
  end
end

private

  def warehouse_params
    params.require(:warehouse).permit(:user_id, :address)
  end
