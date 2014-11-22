class StylistsController < ApplicationController

	def show
		@stylist = Stylist.find(session[:user_id])
	end

end
