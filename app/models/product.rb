class Product < ApplicationRecord
  has_one_attached :featured_image  # For image upload
  has_rich_text :description        # For rich text
  validates :name, presence: true
end
