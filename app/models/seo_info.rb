class SeoInfo < ActiveRecord::Base

  belongs_to :seoable, polymorphic: true
end
