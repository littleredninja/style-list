class Client < ActiveRecord::Base
	belongs_to :stylist
	has_many :trunks
	has_many :trunk_items, through: :trunks

	def full_name
		self.first_name + " " + self.last_name
	end

	def client_sales(trunks)
		sales = 0
		trunks.each do |trunk|
			trunkItems = trunk.trunk_items
			trunkItems.each do |trunkItem|
				if trunkItem.sold == true
					sales += trunkItem.item.sale_price
				end
			end
		end
		return sales
	end

	def client_total_trunk_price(trunks)
		totalPossibleSales = 0
		trunks.each do |trunk|
			trunkItems = trunk.trunk_items
			trunkItems.each do |trunkItem|
				totalPossibleSales += trunkItem.item.sale_price
			end
		end
		return totalPossibleSales
	end

	def client_sales_percentage(trunks)
		sales = client_sales(trunks)
		total = client_total_trunk_price(trunks)
		percentage = (sales/total * 100).to_i
	end

end