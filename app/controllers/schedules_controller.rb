class SchedulesController < ApplicationController
  before_action :set_cleaning, only: %i[show]
  before_action :authenticate_user!
  before_action :user_is_employee
  
  def index
    @cleanings = current_user.employee.cleanings
  end

  def show
  end

  private

  def user_is_employee
    if current_user.employee.nil?
      redirect_to static_pages_home_path, notice: "User is not a client"
    end
  end

  def set_cleaning
    @cleaning = Cleaning.find(params[:id])
  end

end
