class CityIntroductionsController < ApplicationController
  def index
    @city_introductions = CityIntroduction.all
    @q = Sample.ransack(params[:q])
    @smple = @q.result(distinct: true)
  end

  def show
        @city_introduction_new = CityIntroduction.new
        @city_introduction = CityIntroduction.find(params[:id])
        @customer = @customer.city_introduction
  end

  def create
  end

  def new
  end

  private
    def city_introduction_params
        params.require(:city_introduction).permit(:image, :name, :comment, :customer_id)
    end

  end