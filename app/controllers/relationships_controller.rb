class RelationshipsController < ApplicationController

	def follow
  curren_customer.follow(params[:id])
  redirect_to root_path
end

def unfollow
  current_customer.unfollow(params[:id])
  redirect_to root_path
end
end
