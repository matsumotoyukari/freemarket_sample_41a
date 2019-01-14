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
    @user.cardtoken = params[:cardtoken]
    if @user.save
      token = @user.cardtoken
      customer_id = Payjp::Customer.create(card: token).id
      @user.customerid = customer_id
      @user.save
      redirect_to root_path
    else
      redirect_to register_cregit_card_path
    end
  end

end
