class CategoryController < ApplicationController
  def index
    @categoryroot = Category.find(1).siblings
  end

  def show
    @category = Category.find(params[:id])
    @products = search_product(@category)
  end
end
