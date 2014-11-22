class Stylist < ActiveRecord::Base
	has_many :clients
	has_many :trunks, through: :clients

	has_secure_password
end