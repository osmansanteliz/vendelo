require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
	test 'render a list of product' do
		get products_path

		assert_response :success
		assert_select '.product', 2

	end
	
	test 'render a detailed product page' do
		get product_path(products(:ps4))

		assert_response :success
		assert_select '.titel', 'ps4 fat'
		assert_select '.description', 'ps4 en buen estado'
		assert_select '.price', '150$'
	end	

	test 'render a new product form' do
		get new_product_path

		assert_response :success
		assert_select 'form'
	end	
end	