class UsersController < ApplicationController
  protect_from_forgery except: :pay

  def index
  end

  def register_cregit_card
  end

  def pay
    Payjp.api_key = ENV['PAYJP_SECRET_KEY']
    @user = User.find(current_user)
    @user.cardtoken = params[:cardtoken]
    @user.save
    redirect_to root_path
  end

end
