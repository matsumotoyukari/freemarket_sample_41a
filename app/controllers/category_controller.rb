class CategoryController < ApplicationController
  def index
    @categoryroot = Category.find(PARENT).siblings
  end

  def show
    @categoryroot = Category.find(PARENT).siblings
    @category = Category.find(params[:id])
    @products = search_product(@category)
  end
end
