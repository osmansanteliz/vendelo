class FavoritesController < ApplicationController

	def create
		Favorite.create(product: product, user: Current.user)
	end

	private

	def product
		@product ||= Product.find(params[:product_id])
	end
end	