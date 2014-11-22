class ClientsController < ApplicationController

	def show
		@stylist = Stylist.find(session[:user_id])
		@client = Client.find(params[:id])
		@trunks = @client.trunks
		@sales = @client.client_sales(@trunks)
		@salesPercentage = @client.client_sales_percentage(@trunks)
		@soldItems = @client.trunk_items.where(sold: true)
		@unsoldItems = @client.trunk_items.where(sold: false)
	end

end
