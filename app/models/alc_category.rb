class AlcCategory < ApplicationRecord
  has_many :users, dependent: :destroy
  has_many :posts, dependent: :destroy

  mount_uploader :image, ImageUploader
end
