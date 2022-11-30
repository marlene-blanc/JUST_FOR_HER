class WarehousesController < ApplicationController
  def create
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
