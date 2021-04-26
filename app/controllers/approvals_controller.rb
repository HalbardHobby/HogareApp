class ApprovalsController < ApplicationController
  before_action :set_approval, only: %i[show edit update destroy]
  before_action :authenticate_user!

  def index
    @approvals = Cleaning.where(approved: false )
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    @approval.destroy
    respond_to do |format|
      redirect_to cleanings_url, notice: "Babble was successfully destroyed."
    end
  end

  private

  def set_approval
    @approval = Cleaning.find(params[:id])
  end

  def approval_params
    params.require(:approval).permit(:start_time, :address_id, :employee_id, :approved, :price)
  end

end
