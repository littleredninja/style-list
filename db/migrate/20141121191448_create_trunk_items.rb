class CreateTrunkItems < ActiveRecord::Migration
  def change
    create_table :trunk_items do |t|
    	t.integer :trunk_id
    	t.integer :item_id
    	t.boolean :sold

    	t.timestamps
    end
  end
end
