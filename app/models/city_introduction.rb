class CityIntroduction < ApplicationRecord
				attachment :image
					include CanCan::Ability

					# 		def initialize(user)
					# 				if user.try(:admin?)
					# 					can :access, :rails_admin
					# 					can :manage, :all
					# 			end
					# end
							def change
								  add_column :users, :admin, :boolean, default: false
							end
				end
