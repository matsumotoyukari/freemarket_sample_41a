class MypayjpController < ApplicationController
  require 'payjp'

  def show
    @user = current_user
    @product = Product.find(params[:id])
  end

  def create_charge
    @product = Product.find(params[:id])
    customer_id = current_user.customerid
    amount = @product.price
    Payjp.api_key = ENV['PAYJP_SECRET_KEY']
    PaysHelper.create_charge(amount, customer_id)
    @trade = Trade.find_by(product_id: params[:id])
    @trade.deal = true
    if @trade.save
      redirect_to root_path
    else
      redirect_to mypayjp_path
  end

end
