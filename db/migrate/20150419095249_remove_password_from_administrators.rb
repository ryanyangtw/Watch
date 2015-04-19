class RemovePasswordFromAdministrators < ActiveRecord::Migration
  def change
    remove_column :administrators, :password, :string
  end
end
