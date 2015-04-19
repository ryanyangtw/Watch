class CreateSubscribers < ActiveRecord::Migration
  def change
    create_table :subscribers do |t|
      t.string :name
      t.string :line
      t.string :email
      t.string :phone_number
      
      t.timestamps null: false
    end
  end
end
