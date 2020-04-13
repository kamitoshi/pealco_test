class Post < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :comments
  has_one :alc_category
  has_one :menu_category

  mount_uploader :image, ImageUploader
end
