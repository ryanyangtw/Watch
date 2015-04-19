class CreateSeoInfos < ActiveRecord::Migration
  def change
    create_table :seo_infos do |t|
      t.integer :seoable_id, index: true
      t.string :seoable_type
      t.string :title
      t.string :description
      t.text :keywords

      t.timestamps null: false
    end
  end
end
