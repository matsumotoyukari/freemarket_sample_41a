class AddressesController < ApplicationController

  def new
     @address = Address.new()
  end

  def create
     @address = Address.create(address_params)
     redirect_to register_cregit_card_path
  end

  private

  def address_params
    params.require(:address).permit(:first_name, :last_name, :first_name_kana, :last_name_kana, :zip_code, :prefecture, :city, :address1, :address2, :telephone, address_attributes: [:name]).merge(user_id: current_user.id)
  end

end
