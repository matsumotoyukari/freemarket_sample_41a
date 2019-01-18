module PaysHelper

  require 'payjp'

  def self.create_charge(amount, customer_id)
    Payjp::Charge.create(
      amount: amount,
      customer: customer_id,
      currency: 'jpy',
      )
  end

  def self.create_token(number, exp_month, exp_year, cvc)
    Payjp::Token.create({
    :card => {
      :number => number,
      :cvc => cvc,
      :exp_month => exp_month,
      :exp_year => exp_year,
    }},
    {
    'X-Payjp-Direct-Token-Generate': 'true'
    }
    )
  end

end

