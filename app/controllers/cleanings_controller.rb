class CleaningsController < ApplicationController
  before_action :set_cleaning, only: %i[ show edit update destroy ]
  
  def index
    @cleanings = Cleaning.all
  end

  def new
    @cleaning = Cleaning.new
  end

  def create
    @cleaning = Cleaning.new(cleaning_params)

    if @cleaning.save
      redirect_to @cleaning, notice: "Cleaning was successfully created."
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @cleaning.update(cleaning_params)
        redirect_to @cleaning, notice: "Cleaning was successfully updated."
      else
        render :edit
      end
    end
  end

  def destroy
    @cleaning.destroy
    respond_to do |format|
      redirect_to cleanings_url, notice: "Babble was successfully destroyed."
    end
  end

  private

  def set_cleaning
    @cleaning = Cleaning.find(params[:id])
  end

  def cleaning_params
    params.require(:cleaning).permit(:start_time, :address_id, :client_id, :employee_id, :admin_id, :approved, :price)
  end

end
