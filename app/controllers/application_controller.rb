class ApplicationController < ActionController::Base
  before_action :basic_auth, if: :production?
  protect_from_forgery with: :exception

  private
  def search_product(category)
    if category.children?
      category_ids = category.subtree_ids
      if category.id != "1"
        category_ids.pop(1)
      end
      return Product.where(category_id: category_ids.first..category_ids.last).limit(4).order('created_at DESC')
    else
      return  Product.where(category_id: category.id)
    end

  end


  def production?
    Rails.env.production?
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end
end
