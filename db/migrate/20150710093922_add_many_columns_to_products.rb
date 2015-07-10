class AddManyColumnsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :status, :string
    add_column :products, :mechanism, :string
    add_column :products, :case, :string
    add_column :products, :face, :string
    add_column :products, :function, :string
    add_column :products, :strap, :string
  end
end
