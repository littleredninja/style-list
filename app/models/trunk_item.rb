class TrunkItem < ActiveRecord::Base
	belongs_to :trunk
	belongs_to :item
end