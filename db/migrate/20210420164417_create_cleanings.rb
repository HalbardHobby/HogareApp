class CreateCleanings < ActiveRecord::Migration[6.1]
  def change
    create_table :cleanings do |t|
      t.datetime :start_time
      t.integer :address_id
      t.integer :client_id
      t.integer :employee_id
      t.string :admin_id
      t.string :integer
      t.boolean :approved
      t.integer :price

      t.timestamps
    end
  end
end
