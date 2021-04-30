class CleaningsController < ApplicationController
  before_action :set_cleaning, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  before_action :user_is_client

  def index
    @cleanings = current_user.client.cleanings
  end

  def new
    @cleaning = Cleaning.new
  end

  def create
    @cleaning = Cleaning.new(
      cleaning_params.merge(client_id: current_user.client.id)
    )

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
        format.html { redirect_to @cleaning, notice: "Cleaning was successfully updated." }
      else
        render :edit
      end
    end
  end

  def destroy
    if @cleaning.approved
      redirect_to cleanings_url, notice: "Cleaning alreaady paid and confirmed."
    else
      @cleaning.destroy
      respond_to do |format|
        redirect_to cleanings_url, notice: "Babble was successfully destroyed."
      end
    end
  end

  private
  def user_is_client
    if current_user.client.nil?
      redirect_to static_pages_home_path, notice: "User is not a client"
    end
  end

  def set_cleaning
    @cleaning = Cleaning.find(params[:id])
  end

  def cleaning_params
    params.require(:cleaning).permit(:start_time, :address_id)
  end

end
