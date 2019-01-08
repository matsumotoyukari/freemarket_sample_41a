class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to root_path
  end
end
