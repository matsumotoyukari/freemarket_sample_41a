class UsersController < ApplicationController
  require 'payjp'

  protect_from_forgery except: :pay

  def index
  end

  def register_cregit_card
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

end
