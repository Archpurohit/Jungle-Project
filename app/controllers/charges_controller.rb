class ChargesController < ApplicationController
  def create

      stripe.api_key = ENV['sk_test_51Mtd9oFDHV8WArYoEsMLSwl83KS297xmxvzFP5XnchFZGZt6SdXwvf9UnBlZcYwPP3pbgMHJaCRbYjFqREaGF0k000SNbiNe1s']
      order = Order.find(params[:orderId])
      amount = order.shoes.sum(:cost) * 100

      charge = Stripe::Charge.create(
        :amount => amount,
        :description => 'OG Store',
        :currency => 'usd',
        :source => params[token]
    )


  rescue Stripe::CardError => each
    flash[:errors] = e.message
    redirect_to charges_path
  end

end
