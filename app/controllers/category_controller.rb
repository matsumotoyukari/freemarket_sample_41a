class CategoryController < ApplicationController
  def index
    @category = Category.find(1)
    @categoryroot = Category.find(1).siblings
  end

  def show
    @categoryroot = Category.find(1).siblings
    @category = Category.find(params[:id])
    @products = search_product(@category)
  end
end
