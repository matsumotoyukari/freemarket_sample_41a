class ProductsController < ApplicationController

  before_action :set_category
  IMAGE_COUNT = 4

  def index
    @categoryroot = Category.find(1).siblings
    @ladies = search_product(Category.find(1))
    @mens = search_product(Category.find(2))
    @baby_products = search_product(Category.find(3))
    @interior_products = search_product(Category.find(4))
  end

  def new
    @product = Product.new
    IMAGE_COUNT.times { @product.product_images.build}
    @categoryroot = Category.find(1).siblings
    @exhibitor = Shipment.where(shipingfee_id: 1)
    @buyer = Shipment.where(shipingfee_id: 2)
  end

  def show
    @product = Product.find(params[:id])
    @comment = Comment.new
    @comments = Comment.where(product_id: @product.id)
  end


  def create
    @product = Product.new(product_params)

    if @product.save
      Trade.create(product_id: @product.id)
      redirect_to root_path(@product)
    else
      redirect_to new_product_path
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


  def edit
    @product = Product.find(params[:id])
    count = @product.product_images.count
    (IMAGE_COUNT - count).times { @product.product_images.build }
    @categoryroot = Category.find(1).siblings
    @exhibitor = Shipment.where(shipingfee_id: 1)
    @buyer = Shipment.where(shipingfee_id: 2)
    category_id = @product.category_id
    @category_ids = Category.find_by(id: category_id).path_ids
  end

  def update
    @product = Product.find(params[:id])
    if @product.seller == current_user.id
      @product.update(update_product_params)
      redirect_to root_path(@product)
    else
      redirect_to edit_product_path
    end
  end


  private
  def product_params
    params.require(:product).permit(:name, :detail, :condition, :category_id, :size_id, :shipingfee_id, :shipment_id, :area_id, :shipmentday, :price, product_images_attributes: [:image]).merge(seller: current_user.id)
  end

  def update_product_params
    params.require(:product).permit(:name, :detail, :condition, :category_id, :size_id, :shipingfee_id, :shipment_id, :area_id, :shipmentday, :price, product_images_attributes: [:image, :_destroy, :id]).merge(seller: current_user.id)
  end
end
