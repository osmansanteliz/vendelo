require "test_helper"

class FavoritesControllerTest < ActionDispatch::IntegrationTest
	setup do
		login
		@product = products(:ps4 fat)
		@ps4 fat = products(:ps4 fat)
	end

	test "should return my favorites" do
		get favorites_url

		assert_response :success
	end	
	
	test "should create favorite" do
		assert_difference('Favorite.count', 1) do
			post favorites_url(product_id: @product.id)
		end	

		assert_redirected_to product_path(@product)
	end	

	test "should unfavorite" do
		assert_difference('Favorite.count', -1) do
			delete favorite_url(@ps4 fat.id)
		end	

		assert_redirected_to product_path(@ps4 fat)
	end	
end	