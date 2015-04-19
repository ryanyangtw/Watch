class Product < ActiveRecord::Base
  belongs_to :brand
  has_one :seo_info, as: :seoable
end
