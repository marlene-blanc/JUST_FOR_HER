class DonationsController < ApplicationController

  def new
    @products = Product.all
    @donation = Donation.new
    @products.build
  end

  def create
    @donation = Donation.new
    @donation.products = Product.find(params["products"].keys.map(&:to_i))
    @donation.user = current_user

    if @donation.save!
      redirect_to ##
    else
      render :new, status: :unprocessable_entity
    end
  end

  def select_warehouse
    @warehouses = Warehouse.all
    @markers = @warehouses.geocoded.map do |warehouse|
      {
        lat: warehouse.latitude,
        lng: warehouse.longitude,
        info_window: render_to_string(partial: "info_window", locals: { warehouse: warehouse }),
        image_url: helpers.asset_url("logo.png")
      }
    end
  end
end
