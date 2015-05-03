class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.string :image
      t.integer :imageable_id, index: true
      t.string :imageable_type
      t.timestamps null: false
    end
  end
end
