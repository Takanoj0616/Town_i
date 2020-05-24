class RelationshipsController < ApplicationController

      def follow
      current_customer.follow(params[:id])
      redirect_to root_path
    end

    def unfollow
      current_customer.unfollow(params[:id])
      redirect_to root_path
    end

    def create
      @customer.create_notification_follow!(current_customer)
    end
end
