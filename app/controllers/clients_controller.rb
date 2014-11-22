class ClientsController < ApplicationController

	def show
		@stylist = Stylist.find(session[:user_id])
		@client = Client.find(params[:id])
		@trunks = @client.trunks
		@sales = @client.client_sales(@trunks)
		@sales_percentage = @client.client_sales_percentage(@trunks)
	end

end
