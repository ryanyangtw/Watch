class AddSlugsToBrandsAndProducts < ActiveRecord::Migration
  def change
    add_column :brands, :slug, :string, index: true
    add_column :products, :slug, :string, index: true
  end
end
