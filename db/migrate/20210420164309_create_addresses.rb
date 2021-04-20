class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :alias
      t.string :address
      t.integer :client_id

      t.timestamps
    end
  end
end
