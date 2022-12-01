class DonationsController < ApplicationController
  def show
    @donation = Donation.find(params[:id])
  end

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
    @warehouses = Warehouse.all
    @donation = Donation.find(params[:donation_id])
    @markers = @warehouses.geocoded.map do |warehouse|
      {
        lat: warehouse.latitude,
        lng: warehouse.longitude,
        info_window: render_to_string(partial: "info_window", locals: { warehouse: warehouse }),
        image_url: helpers.asset_url("logo.png")
      }
    end
  end

  def update_warehouse
    @warehouse = Warehouse.new(warehouse_params)
    @warehouse.update(params[:donation_id])
  end

  def list
    @products = Product.all
  end

  private

  def warehouse_params
    params.require(:warehouse).permit(:user_id, :address)
  end
end
