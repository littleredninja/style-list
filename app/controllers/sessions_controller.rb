class SessionsController < ApplicationController

	def index
	end

	def create 
		email = params[:email][:user]
		password = params[:password]
		@stylist = Stylist.find_by(email: email)
			if @stylist && @stylist.try(:authenticate, password)
				session[:user_id] = @stylist.id
				redirect_to (@stylist)
			else
				render "error"
			end
	end
	
end
