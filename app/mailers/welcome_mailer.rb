class WelcomeMailer < ApplicationMailer

	def welcome
		@user = params[:user]
		@username = "Hi"

		mail to: @user.email
end
