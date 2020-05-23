class Post < ApplicationRecord
	 belongs_to :customer
	 attachment :image
	 	has_many :contributor, dependent: :destroy
		has_many :favorites, dependent: :destroy
     def favorited_by?(customer)   	# イイねに対して
            favorites.where(customer_id: customer.id).exists?
				end
end
