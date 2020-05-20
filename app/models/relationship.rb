class Relationship < ApplicationRecord

  belongs_to :follower, class_name: "User"     	# 自分がフォローしているユーザーを取得する
	belongs_to :followed, class_name: "User"     # 自分がフォローされているユーザーを取得する
	belongs_to :follower, class_name: "Contributor"     	# 自分がフォローしているユーザーを取得する カラム名
	belongs_to :followed, class_name: "Contributor"     # 自分がフォローされているユーザーを取得する カラム名


end
