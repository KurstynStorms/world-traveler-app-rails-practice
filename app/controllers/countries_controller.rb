class CountriesController < ApplicationController
  def index
    @countries = Country.all
  end

  def show
    @country = Country.find(params[:id])
  end

private

  def country_params
    params.require(:country).permit(:name, :description)
  end
end
