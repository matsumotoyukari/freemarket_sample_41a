class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
    4.times { @product.product_images.build}
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to root_path(@product)
    else
      render :action => "new"
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to root_path
  end

  private
  def product_params
    params.require(:product).permit(:name, :detail, :price, :category_id, :size_id, :area_id, product_images_attributes: [:image]).merge(:seller => 1, :condition => 1, :shipmentday => 1)
  end
end
