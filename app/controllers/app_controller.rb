class AppController < BaseController

	@@a = 1

	def index
		@test = Array.[](1,2,3,4,5,@@a)
	end

end