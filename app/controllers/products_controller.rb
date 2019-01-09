class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
    @product.product_images.build
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
     @product = Product.new(product_params)
     binding.pry
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
    binding.pry
    params.require(:product).permit(:name, :detail, :category_id, :size_id, :area_id, product_images_attributes: [:id, { image: [] }]).merge(:seller => 1, :condition => 1, :shipmentday => 1)
  end
end
