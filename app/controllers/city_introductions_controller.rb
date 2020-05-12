class CityIntroductionsController < ApplicationController
  def index
    @city_introductions = CityIntroduction.all
    @q = Sample.ransack(params[:q])
    @smple = @q.result(distinct: true)
  end

  def show
  end
 
  def create
    @city_introduction = CityIntroduction.new(city_introduction_params)
    @city_introduction.save
    redirect_to city_introductions_path
  end

  def new
      @city_introduction = CityIntroduction.new
  end

  private
    def city_introduction_params
        params.require(:city_introduction).permit(:image, :body, :title)
    end

    def sample_params
        params.require(:sample).permit(:plase)
    end

     def set_sample
      @cityIntroduction = CityIntroduction.find(params[:id])
    end

end
