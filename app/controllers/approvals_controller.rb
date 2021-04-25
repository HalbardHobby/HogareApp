class ApprovalsController < ApplicationController
  before_action :set_approval, only: %i[show edit update destroy]

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
  end

  private

  def set_approval
    @approval = Cleaning.find(params[:id])
  end
end
