class StylistsController < ApplicationController

	def show
		@stylist = Stylist.find(session[:user_id])
		@clients = @stylist.clients
		@trunks = @stylist.trunks
		@sales = @stylist.stylist_sales(@trunks)
		@salesPercentage = @stylist.stylist_sales_percentage(@trunks)
	end

end
