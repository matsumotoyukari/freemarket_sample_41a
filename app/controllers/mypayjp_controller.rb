class MypayjpController < ApplicationController
  require 'payjp'

  def index
  end

  def create_charge(token, amount)
    Payjp::Charge.create(
      amount: amount,
      card: token,
      currency: 'jpy',
      )
  end

end
