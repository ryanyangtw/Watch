class Brand < ActiveRecord::Base

  has_many :products, dependent: :destroy
  has_one :seo_info, as: :seoable

end
