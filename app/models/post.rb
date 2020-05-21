class Post < ApplicationRecord
	 belongs_to :customer
	 attachment :image
	 	has_many :contributor, dependent: :destroy
		has_many :favorites, dependent: :destroy
     def favorited_by?(customer)
            favorites.where(customer_id: customer.id).exists?
				end

		   def favorited_by?(contributor)
            favorites.where(contributor_id: contributor.id).exists?
       end


end
