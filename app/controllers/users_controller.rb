class UsersController < ApplicationController

  before_action :authorized, only: [:persist]

  def index
    @users = User.all
    render json: @users, include: "orders.item_order.item"
  end


  # render json: resource, include: "shipment_service_types,shipment_service_types.time_windows"


  # def show
  #   @user = User.find(params[:id])
  #   wristband = encode_token({user_id: @user.id})
  #   render json: {user: UserSerializer.new(@user), token: wristband}
  # end

  def persist
    wristband = encode_token({user_id: @user.id})
    render json: {user: UserSerializer.new(@user), token: wristband}, include: "orders.item_order.item"
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      wristband = encode_token({user_id: @user.id})
      render json: {user: UserSerializer.new(@user), token: wristband}, status: 201
    else
      render json: {message: "Invalid username"}
    end
  end





  def login
    # byebug
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      wristband = encode_token({user_id: @user.id})
      render json: {user: UserSerializer.new(@user), token: wristband}, include: "orders.item_order.item"
    else
      render json: {message: "Invalid username or password"}
    end
  end






  private

  def user_params
    params.permit(:username, :password)
  end

end
  # def index 
  #   @user = User.all 
  #   render json: @user
  # end

