class CategoryController < ApplicationController
  def index
    @categoryroot = Category.find(Constants::PARENT).siblings
  end

  def show
    @categoryroot = Category.find(Constants::PARENT).siblings
    @category = Category.find(params[:id])
    @products = search_product(@category)
  end
end
