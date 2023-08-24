class Product < ApplicationRecord
	include PgSearch::Model
	pg_search_scope :search_full_text, against: {
		titel: 'A',
		description: 'B'
	}

	has_one_attached :photo

	validates :titel, presence: true
	validates :description, presence: true
	validates :price, presence: true

	belongs_to :category
end
