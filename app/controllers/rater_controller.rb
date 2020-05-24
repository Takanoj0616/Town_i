class RaterController < ApplicationController

  def create
    if customer_signed_in?
      obj = params[:klass].classify.constantize.find(params[:id])
      obj.rate params[:score].to_f, current_customer, params[:dimension]

      render :json => true
    else
      render :json => false

       post.create_notification_like!(current_customer)
    end
  end
end
