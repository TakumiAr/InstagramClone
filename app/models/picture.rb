class Picture < ApplicationRecord
  validates :content, presence: true, length: { maximum: 140 }
  validates :image, presence: true
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :favorites, dependent: :destroy
end
