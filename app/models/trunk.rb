class Trunk < ActiveRecord::Base
	belongs_to :client
	has_many :trunk_items
end