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
    @donation.user = current_user
    @donation.save
    params["products"].each do |product_id_str, quantity_str|
      quantity = quantity_str.to_i
      if quantity > 0
        product_to_add = Product.find(product_id_str.to_i)
        DonatedProduct.create(
          product: product_to_add,
          donation: @donation,
          quantity: quantity
        )
      end
    end

    if @donation.save!
       redirect_to donation_deposit_option_path(@donation)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def deposit_option
    @donation = Donation.find(params[:donation_id])
  end

  def select_warehouse
    @warehouses = Warehouse.all
    @donation = Donation.find(params[:donation_id])
    @markers = @warehouses.geocoded.map do |warehouse|
      {
        lat: warehouse.latitude,
        lng: warehouse.longitude,
        info_window: render_to_string(partial: "info_window", locals: { warehouse: warehouse, donation: @donation}),
        image_url: helpers.asset_url("logo.png")
      }
    end
  end

  def update_warehouse
    @donation = Donation.find(params[:donation_id])
    @warehouse = Warehouse.find(params[:warehouse_id].to_i)
    if @donation.update(warehouse: @warehouse)
      redirect_to @donation
    else
      render :select_warehouse
    end
  end

  def list
    @products = Product.all
  end

  private

  def warehouse_params
    params.require(:warehouse).permit(:user_id, :address)
  end
end
