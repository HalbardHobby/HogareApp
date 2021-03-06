class ApprovalsController < ApplicationController
  before_action :set_approval, only: %i[show edit update destroy]
  before_action :authenticate_user!
  before_action :user_is_admin

  def index
    @approvals = Cleaning.where(approved: false )
  end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @approval.update(
        approval_params.merge(admin_id: current_user.admin.id)
      )
        format.html { redirect_to @approval, notice: "Cleaning sucessfully updated" }
      else
        render :edit
      end
    end
  end

  def destroy
    @approval.destroy
    respond_to do |format|
      redirect_to cleanings_url, notice: "Babble was successfully destroyed."
    end
  end

  private

  def user_is_admin
    if current_user.admin.nil?
      redirect_to static_pages_home_path, notice: "User is not a client"
    end
  end

  def set_approval
    @approval = Cleaning.find(params[:id])
  end

  def approval_params
    params.require(:cleaning).permit(:start_time, :address_id, :employee_id, :approved, :price)
  end

end
