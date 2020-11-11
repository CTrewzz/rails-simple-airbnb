class Flat < ApplicationRecord
  validates :name, :description, :address, :price_per_night, :number_of_guests, presence: true
  validates :price_per_night, :number_of_guests, numericality: { only_integer: true }
end
