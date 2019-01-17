class LikesController < ApplicationController

  def index
    @products = current_user.liked_products
  end

  def create
    @product = Product.find(params[:product_id])
    @product.likes.new(user_id: current_user.id)
    respond_to do |format|
      if @like.save
        format.html {redirect_back(fallback_location: product_path(@product))}
        format.js
      else
        redirect_back(fallback_location: product_path(@product))
      end
    end
  end
  
  def destroy
    @product = Product.find(params[:product_id])
    @like = @product.likes.where(user_id: current_user.id)

    respond_to do |format|
      if @like.destroy
        format.html {redirect_back(fallback_location: product_path(@product))}
        format.js
      else
        redirect_back(fallback_location: product_path(@product))
      end
    end
  end
  
end
