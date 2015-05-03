
#TODO: deprecated. This class should be delete
class Photo < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  belongs_to :imageable, polymorphic: true, touch: true
end
