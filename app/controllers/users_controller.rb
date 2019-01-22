class UsersController < ApplicationController
  require 'payjp'

  before_action :set_category
  before_action :set_user, only: [:update]
  protect_from_forgery except: :pay

  def index
    @purchase_products = current_user.purchase_products
    @user = User.find(1)
  end

  def update
    if @user.id == current_user.id
      current_user.update(update_user_profile)
    end
    redirect_to users_path
  end

  def register_cregit_card
  end

  def purchase
    @purchase_products = current_user.purchase_products
  end

  def purchased
    @purchase_products = current_user.purchase_products
  end

  def listings
    @products = current_user.products
  end

  def progress
    @products = current_user.products
  end

  def completed
    @products = current_user.products
  end

  def pay
    Payjp.api_key = ENV['PAYJP_SECRET_KEY']
    @user = User.find(current_user)
    exp_yaer = '20' + params[:year]
    @user.cardtoken = PaysHelper.create_token(params[:number], params[:month], exp_yaer, params[:cvc]).id
    if @user.save
      token = @user.cardtoken
      customer_id = Payjp::Customer.create(card: token).id
      @user.payjp_id = customer_id
      @user.save
      redirect_to root_path
    else
      redirect_to register_cregit_card_path
    end
  end

  def set_user
    @user = User.find(params[:id])
  end

  private
  def update_user_profile
    params.require(:user).permit(:image)
  end

end
