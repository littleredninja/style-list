class Stylist < ActiveRecord::Base
	has_many :clients
	has_many :trunks, through: :clients

	has_secure_password
	validates :email, uniqueness: true

	def stylist_sales(trunks)
		sales = 0
		trunks.each do |trunk|
			trunkItems = trunk.trunk_items
			trunkItems.each do |trunk_item|
				if trunk_item.sold == true
					sales += trunk_item.item.sale_price
				end
			end
		end
		return sales
	end

	def stylist_total_trunk_price(trunks)
		total_possible_sales = 0
		trunks.each do |trunk|
			trunk_items = trunk.trunk_items
			trunk_items.each do |trunk_item|
				total_possible_sales += trunk_item.item.sale_price
			end
		end
		return total_possible_sales
	end

	def stylist_sales_percentage(trunks)
		sales = stylist_sales(trunks)
		total = stylist_total_trunk_price(trunks)
		percentage = (sales/total * 100).to_i
	end

end