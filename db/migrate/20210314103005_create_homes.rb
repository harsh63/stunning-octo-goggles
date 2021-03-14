class CreateHomes < ActiveRecord::Migration[5.2]
  def change
    create_table :homes do |t|
      t.string :owner
      t.string :address
      t.integer :sqmt
      t.decimal :price
      t.integer :homeable_id
      t.string :homeable_type

      t.timestamps
    end
  end
end
