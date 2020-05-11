class CityIntroductionController < ApplicationController
  def index
    @cityIntroductions = CityIntroduction.all
    @q = Sample.ransack(params[:q])
    @smple = @q.result(distinct: true)
  end

  def show
  end

  def new
      @cityIntroduction = CityIntroduction.new
  end

   def city_introduction_params
        params.require(:city_introduction).permit(:introduction,  :image, :name, :body, :title)
    end
    def sample_params
        params.require(:sample).permit(:plase)
    end
end
