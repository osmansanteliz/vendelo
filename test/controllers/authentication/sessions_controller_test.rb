require "test_helper"

class Authentication::SessionsControllerTest < ActionDispatch::IntegrationTest
	def setup
		@user = users(:os)
	end	

	test "should get new" do
		get new_session_url
		assert_response :success
	end	

	test "should login an user by email" do
		post sessions_url, params: {login: @user.email, password: 'Nicaragua'}

		assert_redirected_to products_url	
	end	

	test "should login an user by username" do
		post sessions_url, params: {login: @user.username, password: 'Nicaragua'}

		assert_redirected_to products_url	
	end	
end	