class RatesController < ApplicationController
  before_action :set_category

  def new
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
    if @rate.save
      redirect_to users_path
    else
      redirect_to new_product_rate_path(@product)
    end
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
      @trade = @product.trade
      @trade.deal = true
      if @trade.save
        redirect_to users_path
      else
        redirect_to edit_product_rate_path(@product,@product.rate)
      end
    elsif current_user.id == @product.trade.user_id
      @rate.update(params_seller_rate)
      @trade = @product.trade
      @trade.deal = true
      if @trade.save
        redirect_to users_path
      else
        redirect_to edit_product_rate_path(@product,@product.rate)
      end
    end

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
