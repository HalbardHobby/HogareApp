class SchedulesController < ApplicationController
  before_action :set_cleaning, only: %i[show]
  
  def index
  end

  def show
  end

  private

  def set_cleaning
    @cleaning = Cleaning.find(params[:id])
  end

end
