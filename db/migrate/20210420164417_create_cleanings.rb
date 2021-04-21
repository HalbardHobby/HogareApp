class CreateCleanings < ActiveRecord::Migration[6.1]
  def change
    create_table :cleanings do |t|
      t.datetime :start_time
      t.integer :address_id
      t.integer :client_id
      t.integer :employee_id
      t.integer :admin_id
      t.boolean :approved
      t.integer :price

      t.timestamps
    end
  end
end
