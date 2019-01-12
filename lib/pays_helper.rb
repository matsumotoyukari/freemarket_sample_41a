module PaysHelper

  require 'payjp'

  def create_customer(token)
    Payjp::Customer.create(token)
    redirect_to root_path
  end

end
