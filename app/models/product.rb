class Product < ApplicationRecord
  belongs_to :cart
  has_many :promos
end
