class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :title, unique: true
      t.text :description

      t.timestamps null: false
    end
  end
end
