class Client < ActiveRecord::Base
	belongs_to :stylist
	has_many :trunks
	has_many :trunk_items, through: :trunks
end