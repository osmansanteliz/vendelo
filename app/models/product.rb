class Product < ApplicationRecord
	validates :titel, presence: true
	validates :description, presence: true
	validates :price, presence: true
end
