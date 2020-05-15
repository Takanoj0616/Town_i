class HomesController < ApplicationController
  def index
     @homes = Home.all
  end

  def about
  end
end
