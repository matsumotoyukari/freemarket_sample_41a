class LikesController < ApplicationController
  before_action :set_product,only: [:create,:destroy]
  before_action :set_category

  def index
    @products = current_user.liked_products
  end

  def create
    @like = @product.likes.new(user_id: current_user.id)

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
    @like = @product.likes.find_by(user_id: current_user.id)
    respond_to do |format|
      if @like.destroy
        format.html {redirect_back(fallback_location: product_path(@product))}
        format.js
      else
        redirect_back(fallback_location: product_path(@product))
      end
    end
  end

  def set_product
    @product = Product.find(params[:product_id])
  end
end
