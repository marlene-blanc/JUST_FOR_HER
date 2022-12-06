class Product < ApplicationRecord
  has_many :donated_products
  has_many :donations, through: :donated_products
  #validates :category, presence: true
  has_one_attached :photo
end
