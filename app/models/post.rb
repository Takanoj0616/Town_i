class Post < ApplicationRecord
	 belongs_to :customer
	 attachment :image
	 	has_many :contributor, dependent: :destroy
		has_many :favorites, dependent: :destroy
		has_many :notifications, dependent: :destroy
     def favorited_by?(customer)   	# イイねに対して
            favorites.where(customer_id: customer.id).exists?
				end

		def create_notification_like!(current_customer)
    # すでに「いいね」されているか検索 押した数だけ相手に通知されるのを防ぐ
    temp = Notification.where(["visitor_id = ? and visited_id = ? and post_id = ? and action = ? ", current_customer.id, customer.id, id, 'like'])
    # いいねされていない場合のみ、通知レコードを作成
    if temp.blank?
      notification = current_customer.active_notifications.new(
        post_id: id,
        visited_id: customer_id,
        action: 'like'
      )
      # 自分の投稿に対するいいねの場合は、通知済みとする
      if notification.visitor_id == notification.visited_id
        notification.checked = true
      end
      notification.save if notification.valid?
    end
  end
end
