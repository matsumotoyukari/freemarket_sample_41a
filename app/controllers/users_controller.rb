class UsersController < ApplicationController

  protect_from_forgery except: :pay

  def index
  end

  def register_cregit_card
  end

  def pay
    @user = User.find(current_user)
    @user.cardtoken = params[:cardtoken]
    if @user.save
      token = @user.cardtoken
      PaysHelper.create_customer(token)
      redirect_to root_path
    else
      redirect_to register_cregit_card_path
    end
  end

end
