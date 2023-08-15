class Product < ApplicationRecord
	has_one_attached :photo

	validates :titel, presence: true
	validates :description, presence: true
	validates :price, presence: true
end
