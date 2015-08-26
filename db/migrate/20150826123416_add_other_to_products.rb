class AddOtherToProducts < ActiveRecord::Migration
  def change
     add_column :products, :other, :string, null: false, default: ""
  end
end
