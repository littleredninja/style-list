class Stylist < ActiveRecord::Base
	has_many :clients
	has_many :trunks, through: :clients
end