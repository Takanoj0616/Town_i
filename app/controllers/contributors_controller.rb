class ContributorsController < ApplicationController
  def new
      Contributor.create!(
   type_id: 1,
   name: '太郎',
   explanation: '説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。',
   image: File.open('./app/assets/images/big-star.png'),
 )
  end

  private
    def contributors_params
        params.require(:contributors).permit(:name, :explanation, :image)
    end
 end