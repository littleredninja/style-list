# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

stylist = Stylist.create(
	email:  "jennie@jennie.jennie", 
	name: "jennie",
	password: "jennie"
	)

clients = Client.create([
	{ first_name: "Joey",
		last_name: "Chamberlin",
		stylist_id: 1
	},
	{ first_name: "Bob",
		last_name: "Morrison",
		stylist_id: 1
	},
	{ first_name: "Levi",
		last_name: "Oman",
		stylist_id: 1
	}
])

trunks = Trunk.create([
	{ client_id: 1,
		date_sent: "2014-11-12"
	},
	{ client_id: 1,
		date_sent: "2014-01-13"
	},
	{ client_id: 2,
		date_sent: "2014-06-07"
	},
	{ client_id: 3,
		date_sent: "2014-10-31"
	}
])

items = Item.create([
	{ clothing_type: "shirt",
		brand: "Ben Sherman",
		color: "navy",
		sale_price: 89.00
	},
	{ clothing_type: "sweater",
		brand: "theory",
		color: "gray",
		sale_price: 275.00
	},
	{ clothing_type: "shirt",
		brand: "Eton",
		color: "red",
		sale_price: 255.00
	},
	{ clothing_type: "pants",
		brand: "Bonobos",
		color: "brown",
		sale_price: 88.00
	},	
	{ clothing_type: "jacket",
		brand: "Gant Rugger",
		color: "blue",
		sale_price: 297.00
	}
])

trunkItems = TrunkItem.create([
	{ trunk_id: 1,
		item_id: 1,
		sold: true
	},
	{ trunk_id: 1,
		item_id: 2,
		sold: true
	},
	{ trunk_id: 1,
		item_id: 3,
		sold: false
	},
	{ trunk_id: 2,
		item_id: 1,
		sold: true
	},
	{ trunk_id: 2,
		item_id: 4,
		sold: false
	},
	{ trunk_id: 2,
		item_id: 5,
		sold: false
	},
	{ trunk_id: 3,
		item_id: 3,
		sold: true
	},
	{ trunk_id: 3,
		item_id: 4,
		sold: true
	},
	{ trunk_id: 3,
		item_id: 5,
		sold: true
	},
	{ trunk_id: 4,
		item_id: 1,
		sold: false
	},
	{ trunk_id: 4,
		item_id: 4,
		sold: true
	},
	{ trunk_id: 4,
		item_id: 5,
		sold: true
	}
])