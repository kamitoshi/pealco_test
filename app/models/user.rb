class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :validatable
  has_many :posts, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  belongs_to :alc_category

  mount_uploader :image, ImageUploader

  validates :name, presence: true, length:{maximum:50}
  validates :email, presence: true, length:{maximum:255}
  validates :self_introduction, length:{maximum:400}
end
