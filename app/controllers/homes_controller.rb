class HomesController < ApplicationController
  def index
  end
  def about
      @notifications = current_customer.passive_notifications.page(params[:page]).per(20)
      @notifications.where(checked: false).each do |notification|
      notification.update_attributes(checked: true)
   end
  end
end