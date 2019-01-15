class MypayjpController < ApplicationController
  require 'payjp'

  def show
    @user = current_user
    @area = Area.find_by(id: current_user.address.prefecture)
    @product = Product.find(params[:id])
    @product_images = ProductImage.find_by(product_id: params[:id])
  end

  def create_charge
    @product = Product.find(params[:id])
    customer_id = current_user.customerid
    point = params[:price].to_i
    amount = @product.price - point
    if current_user.point
      save_users_point(point, amount)
    end
    Payjp.api_key = ENV['PAYJP_SECRET_KEY']
    PaysHelper.create_charge(amount, customer_id)
    @trade = Trade.find_by(product_id: params[:id])
    @trade.deal = true
    if @trade.save
      save_sellers_point(@product, amount)
      redirect_to root_path
    else
      redirect_to mypayjp_path
    end
  end

end
