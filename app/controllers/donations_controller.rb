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
    raise

    if @donation.save!
    redirect_to ##
    else
      render :new, status: :unprocessable_entity
    end
  end
end
