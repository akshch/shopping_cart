class Product < ApplicationRecord

  has_many :line_items, dependent: :destroy
  has_one_attached :image
end
