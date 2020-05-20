class Contributor < ApplicationRecord
	mount_uploader :image, ImageUploader
	     has_many :favorites, dependent: :destroy
# →create app/uploaders/image_uploader.rb ここチェック
	belongs_to :post
	belongs_to :follower, class_name: "Customer"
  belongs_to :followed, class_name: "Customer"
end
