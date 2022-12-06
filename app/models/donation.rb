class Donation < ApplicationRecord
  belongs_to :user
  belongs_to :warehouse, optional: true
  has_many :donations

  has_many :donated_products
  has_many :products, through: :donated_products

  accepts_nested_attributes_for :products

  monetize :price_cents
end
