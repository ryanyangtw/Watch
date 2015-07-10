class AddChineseTitleToBrands < ActiveRecord::Migration
  def change
     add_column :brands, :chinese_title, :string
  end
end
