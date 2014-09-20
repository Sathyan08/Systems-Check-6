class AddCityToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :city, :string, null: false
  end
end
