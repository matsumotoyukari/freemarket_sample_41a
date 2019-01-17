class LikesController < ApplicationController


  def index
    @products = current_user.liked_products
  end


  def create
    @product = Product.find(params[:product_id])
    @like = Like.new(product_id: params[:product_id],user_id: current_user.id)
    respond_to do |format|
      if @like.save
        format.html {redirect_back(fallback_location: product_path(@product))}
        format.js
      end
    end



  end
  def destroy
    @product = Product.find(params[:product_id])
    @like = Like.find_by(product_id: params[:product_id], user_id: current_user.id)

    respond_to do |format|
      if @like.destroy
        format.html {redirect_back(fallback_location: product_path(@product))}
        format.js
      end
    end
  end


end
