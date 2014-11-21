class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
    	t.string :clothing_type
    	t.string :brand
    	t.string :color
    	t.decimal :sale_price

    	t.timestamps
    end
  end
end
