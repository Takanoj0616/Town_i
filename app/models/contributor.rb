class Contributor < ApplicationRecord
	mount_uploader :image, ImageUploader
# →create app/uploaders/image_uploader.rb ここチェック
	 belongs_to :post
end
