class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         ratyrate_rater
          has_many :posts, dependent: :destroy
          has_many :favorites, dependent: :destroy
          has_many :follower, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy # フォロー取得する
          has_many :followed, class_name: "Relationship", foreign_key: "followed_id", dependent: :destroy # フォロワー取得する
          has_many :following_customer, through: :follower, source: :followed # 自分がフォローしている人
          has_many :follower_customer, through: :followed, source: :follower # 自分をフォローしている人

           # フォローする
          def follow(contributor_id)
            follower.create(followed_id: contributor_id)
          end

          # フォローを外す
          def unfollow(contributor_id)
            follower.find_by(followed_id: contributor_id).destroy
          end

          # フォローしていればtrueを返す
          def following?(customer)
            following_customer.include?(customer)
          end

end