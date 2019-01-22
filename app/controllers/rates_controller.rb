class RatesController < ApplicationController
  before_action :set_category

  def transaction
    @product = Product.find(params[:product_id])
    @rate = Rate.new
  end

  def create
    @product = Product.find(params[:product_id])
    if current_user.id == @product.seller
      @rate = Rate.new(params_buyer_rate)
    elsif current_user.id == @product.trade.user_id
      @rate = Rate.new(params_seller_rate)
    end
    @rate.save
    redirect_to users_path
  end

  def edit
    @product = Product.find(params[:product_id])
    @rate = @product.rate
  end

  def update
    @product = Product.find(params[:product_id])
    @rate = @product.rate
    if current_user.id == @product.seller
      @rate.update(params_buyer_rate)
    elsif current_user.id == @product.trade.user_id
      @rate.update(params_seller_rate)
    end
    @trade = @product.trade
    @trade.deal = true
    @trade.save

    redirect_to users_path

  end

  private
  def params_seller_rate
    @product = Product.find(params[:product_id])
    params.require(:rate).permit(:seller_rate).merge(product_id: params[:product_id],buyer_id: current_user.id,seller_id: @product.seller)
  end

  def params_buyer_rate
    params.require(:rate).permit(:buyer_rate).merge(product_id: params[:product_id],seller_id: current_user.id)
  end

end
