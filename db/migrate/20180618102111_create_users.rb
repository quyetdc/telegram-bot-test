class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :uuid, index: true
      t.string :first_name
      t.string :last_name
      t.datetime :deleted_at
	  
      t.timestamps
    end
  end
end
