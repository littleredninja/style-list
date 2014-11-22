class Stylist < ActiveRecord::Base
	has_many :clients
	has_many :trunks, through: :clients

	has_secure_password
	validates :email, uniqueness: true

	def stylist_sales(trunks)
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

	def stylist_total_trunk_price(trunks)
		totalPossibleSales = 0
		trunks.each do |trunk|
			trunkItems = trunk.trunk_items
			trunkItems.each do |trunkItem|
				totalPossibleSales += trunkItem.item.sale_price
			end
		end
		return totalPossibleSales
	end

	def stylist_sales_percentage(trunks)
		sales = stylist_sales(trunks)
		total = stylist_total_trunk_price(trunks)
		percentage = (sales/total * 100).to_i
	end

end