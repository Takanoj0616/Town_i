class Contributor < ApplicationRecord
	mount_uploader :image, ImageUploader
	     has_many :favorites, dependent: :destroy
# →create app/uploaders/image_uploader.rb ここチェック
	belongs_to :post
	belongs_to :follower, class_name: "Customer"	# 自分がフォローしているユーザーを取得する
  belongs_to :followered, class_name: "Customer" # 自分がフォローされているユーザーを取得する
end
