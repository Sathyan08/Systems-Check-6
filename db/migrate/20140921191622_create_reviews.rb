class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :reviewer
      t.integer :rating, null: false
      t.text :body, null: false
      t.references :restaurant, index: true

      t.timestamps
    end
  end
end
