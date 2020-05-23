class Relationship  < ActiveRecord::Base

  belongs_to :follower, class_name: "Customer"     	# 自分がフォローしているユーザーを取得する 主
	belongs_to :followed, class_name: "Customer"     # 自分がフォローされているユーザーを取得する 主

end
