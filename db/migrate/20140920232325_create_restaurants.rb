class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :state, null: false
      t.string :zip_code, null: false
      t.string :category
      t.text :description

      t.timestamps
    end
  end
end
