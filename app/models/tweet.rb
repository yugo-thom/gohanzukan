class Tweet < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :user   #追加

  has_one_attached :image #追記
end