class AddLargeToPhotos < ActiveRecord::Migration
  def change
     add_column :photos, :large, :bool, default: false
  end
end
