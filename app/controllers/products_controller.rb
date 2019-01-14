class ProductsController < ApplicationController

  def index
    @ladies = search_product(Category.find(1))
    @mens = search_product(Category.find(2))
    @baby_products = search_product(Category.find(3))
    @interior_products = search_product(Category.find(4))
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

  def search
    @keyword = params[:keyword]
    @products = Product.where('name LIKE(?) OR detail  LIKE(?)',"%#{params[:keyword]}%","%#{params[:keyword]}%").limit(20)
  end




  private
  def product_params
    params.require(:product).permit(:name, :detail, :price, :category_id, :size_id, :area_id, product_images_attributes: [:image]).merge(:seller => 1, :condition => 1, :shipmentday => 1)
  end
end
