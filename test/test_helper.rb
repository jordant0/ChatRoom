ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'factory_girl'
FactoryGirl.find_definitions

class ActiveSupport::TestCase

	def user_login
		user = FactoryGirl.create(:user)
		controller = @controller
		@controller = SessionsController.new
		post :create, name: user.name
		@controller = controller
		return user
	end

end
