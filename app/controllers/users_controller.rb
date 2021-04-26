class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit activate_admin activate_client activate_employee]
  before_action :authenticate_user!
  before_action :user_is_admin

  def index
    @users = User.all
  end

  def show
  end

  def edit
  end

  def activate_admin
    @admin = Admin.new
    @admin.user = @user

    if @admin.save
      redirect_to @user, notice: "User enabled as administrator."
    else
      render :edit, notice: "Could not enable as administrator."
    end
  end

  def activate_client
    @client = Client.new
    @client.user = @user

    if @client.save
      redirect_to @user, notice: "User enabled as administrator."
    else
      render :edit, notice: "Could not enable as administrator."
    end
  end

  def activate_employee
    @employee = Employee.new
    @employee.user = @user

    if @employee.save
      redirect_to @user, notice: "User enabled as administrator."
    else
      render :edit, notice: "Could not enable as administrator."
    end
  end

  private

  def user_is_admin
    if current_user.admin.nil?
      redirect_to static_pages_home_path, notice: "User is not a client"
    end
  end

  def set_user
    @user = User.find(params[:id])
  end

end
