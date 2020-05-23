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
      @city_introduction_new = CityIntroduction.new
      @city_introduction.save
      redirect_to city_introductions
  end

   def update
    @city_introduction= CityIntroduction.find(params[:id])
    if @city_introduction.update(city_introduction_parameter)
      redirect_to city_introductions_path, notice: "編集しました"
    else
      render 'edit'
    end
  end

 def edit
       @city_introduction = CityIntroduction.(params[:id])
 end

  def new
        @city_introduction = CityIntroduction.new
  end

  private
    def city_introduction_params
        params.require(:city_introduction).permit(:image, :name, :comment, :start_time)
    end

  end