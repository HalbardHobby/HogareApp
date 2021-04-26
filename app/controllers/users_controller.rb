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

  def set_user
    @user = User.find(params[:id])
  end

end
