class ApplicationController < ActionController::Base
  before_action :basic_auth, if: :production?
  before_action :configure_permitted_parameter, if: :devise_controller?
  protect_from_forgery with: :exception

  include PaysHelper

  PARENT = 1

  def set_category
    @categoryroot = Category.find(PARENT).siblings
  end

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

  def configure_permitted_parameter
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :point])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

  def save_users_point(point, amount)
    @user = current_user
    @user.point -= point
    @user.save
  end

  def save_sellers_point(product, amount)
    @seller = User.find_by(id: product.seller)
    @seller.point += amount
    @seller.save
  end

end
