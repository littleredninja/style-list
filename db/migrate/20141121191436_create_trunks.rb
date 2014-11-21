class CreateTrunks < ActiveRecord::Migration
  def change
    create_table :trunks do |t|
    	t.integer :client_id
    	t.date :date_sent

    	t.timestamps
    end
  end
end
