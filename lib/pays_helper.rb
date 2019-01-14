module PaysHelper

  require 'payjp'

  def self.create_customer(token)
    Payjp::Customer.create(card: token)
  end


  def self.create_charge(amount, customer_id)
    Payjp::Charge.create(
      amount: amount,
      customer: customer_id,
      currency: 'jpy',
      )
  end

end

