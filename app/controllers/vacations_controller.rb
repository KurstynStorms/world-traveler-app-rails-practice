class VacationsController < ApplicationController
  def index
    @vacations = Vacation.all
  end

  def new
    @countries = Country.all
    @travelers = Traveler.all
    @vacation = Vacation.new
  end

  def create
    @vacation = Vacation.new(vacation_params)
    if @vacation.save
    redirect_to @vacation.country
    else
      render :new
    end
  end

private  

  def vacation_params
    params.require(:vacation).permit(:favorite, :country_id, :traveler_id)
  end
end
