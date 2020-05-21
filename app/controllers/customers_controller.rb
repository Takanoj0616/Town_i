class CustomersController < ApplicationController

  def indx
  end

  def show
    @city_introduction = CityIntroduction.new
    @customer = Customer.find(params[:id])
    @city_introductions = @customer.city_introductions
  end

  def create
    @customer = Customer.new(customer_params)
    @customer.customer_id = current_customer.id
    @customer.save
    redirect_to city_introduction(@customer.id)
  end
   private
    def customer_params
      params.require(:customer).permit( :street_address )
   end

end
