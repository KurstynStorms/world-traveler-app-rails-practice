class TravelersController < ApplicationController
  def index
    @travelers = Traveler.all
  end

  def show
    @traveler = Traveler.find(params[:id])
  end

  def traveler_params
    params.require(:traveler).permit(:name, :age)
  end
end
