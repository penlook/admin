class AppController < BaseController
	def index
		@users = User.all
	end
end