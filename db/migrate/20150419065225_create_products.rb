class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title, unique: true
      t.text :desctiption
      t.integer :price
      t.string :video_url
      t.integer :brand_id, index: true
      
      t.timestamps null: false
    end
  end
end
