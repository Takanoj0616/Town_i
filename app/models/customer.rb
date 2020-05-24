class Customer < ApplicationRecord
          # Include default devise modules. Others available are:
          # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
          devise :database_authenticatable, :registerable,
                :recoverable, :rememberable, :validatable

         ratyrate_rater
          has_many :posts, dependent: :destroy
          has_many :favorites, dependent: :destroy   # イイね機能
          has_many :city_introductions, dependent: :destroy
          has_many :follower, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy # フォロー取得する
          has_many :followed, class_name: "Relationship", foreign_key: "followed_id", dependent: :destroy # フォロワー取得する
          has_many :following_customer, through: :follower, source: :followed # 自分がフォローしている人
          has_many :follower_customer, through: :followed, source: :follower # 自分をフォローしている人
          # 通知機能紐付け
           has_many :active_notifications, class_name: 'Notification', foreign_key: 'visitor_id', dependent: :destroy
           has_many :passive_notifications, class_name: 'Notification', foreign_key: 'visited_id', dependent: :destroy

           # フォローする
          def follow(customer_id)
            follower.create(followed_id: customer_id)
          end

          # フォローを外す
          def unfollow(customer_id)
            follower.find_by(followed_id: customer_id).destroy
          end

          # フォローしていればtrueを返す
          def following?(customer)
            following_customer.include?(customer)
          end

         # 通知機能すでに「フォロー」されているか検索 押した数だけ相手に通知されるのを防ぐ
          def create_notification_follow!(current_customer)
            temp = Notification.where(["visitor_id = ? and visited_id = ? and action = ? ",current_customer.id, id, 'follow'])
          if temp.blank?
          notification = current_customer.active_notifications.new(
                  visited_id: id,
                  action: 'follow'
                )
           notification.save if notification.valid?
        end
     end
   end