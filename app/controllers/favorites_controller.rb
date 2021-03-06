class FavoritesController < ApplicationController
	    def create
            post = Post.find(params[:post_id])
            favorite = current_customer.favorites.new(post_id: post.id)
            # イイねを押した時の通知
            post.create_notification_like!(current_customer)
            favorite.save
            redirect_to post_path(post)
        end
        def destroy
            post = Post.find(params[:post_id])
            post = current_customer.favorites.find_by(post_id: post.id)
            favorite.destroy
            redirect_to post_path(post)
        end
end
