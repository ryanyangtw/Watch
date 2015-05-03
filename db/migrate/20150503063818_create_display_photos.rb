class CreateDisplayPhotos < ActiveRecord::Migration
  def change
    create_table :display_photos do |t|
      t.string :image
      t.integer :imageable_id, index: true
      t.string :imageable_type
      t.timestamps null: false
    end
  end
end
