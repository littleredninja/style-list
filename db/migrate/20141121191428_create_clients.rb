class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
    	t.string :first_name
    	t.string :last_name
    	t.integer :stylist_id

    	t.timestamps
    end
  end
end
