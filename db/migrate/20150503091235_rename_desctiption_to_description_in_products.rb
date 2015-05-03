class RenameDesctiptionToDescriptionInProducts < ActiveRecord::Migration
  def change
    rename_column :products, :desctiption, :description
  end
end
