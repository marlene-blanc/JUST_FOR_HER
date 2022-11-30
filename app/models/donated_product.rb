class DonatedProduct < ApplicationRecord
  belongs_to :product
  belongs_to :donation
end
