class AddressesController < ApplicationController
  before_action :set_address, only: %i[show edit update destroy]
  before_action :authenticate_user!
  before_action :user_is_client

  def index
    @addresses = current_user.client.addresses
  end

  def new
    @address = Address.new
  end

  def create
    @address = Address.new(
      address_params.merge(client_id: current_user.client.id)
    )

    if @address.save
      redirect_to @address, notice: "Address successfully added."
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
      if @address.update(address_params)
        redirect_to @address, notice: "Address was successfully updated."
      else
        render :edit
      end
    end
  end

  def destroy
    @address.destroy
    respond_to do |format|
      redirect_to addresses_url, notice: "Address was successfully destroyed."
    end
  end

  private
  def user_is_client
    if current_user.client.nil?
      redirect_to static_pages_home_path, notice: "User is not a client"
    end
  end

  def set_address
    @address = Address.find(params[:id])
  end

  def address_params
    params.require(:address).permit(:alias, :address)
  end
end
