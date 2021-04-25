class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update activate_admin activate_client activate_employee]

  def index
    @users = User.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def activate_admin
  end

  def activate_client
  end

  def activate_employee
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

end
