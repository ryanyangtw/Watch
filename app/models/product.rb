class Product < ActiveRecord::Base
  include Sluggable

  belongs_to :brand
  has_one :seo_info, as: :seoable

  has_many :banners, as: :imageable, dependent: :destroy
  has_one :display_photo, as: :imageable, dependent: :destroy

  validates :title, presence: true

  accepts_nested_attributes_for :banners, :reject_if => :all_blank, allow_destroy: true
  accepts_nested_attributes_for :display_photo, :reject_if => :all_blank, allow_destroy: true

  sluggable_column :title
end
