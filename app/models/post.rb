class Post < ApplicationRecord
  belongs_to :user
  belongs_to :alc_category
  belongs_to :menu_category
  has_many :likes
  has_many :comments

  mount_uploader :image, ImageUploader
end
