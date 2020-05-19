class CustomersController < ApplicationController
  def show
     @customer = Customer.find(params[:id])
     @posts = @customer.posts.page(params[:page]).reverse_order
  end
end
