Rails.configuration.stripe = {
  :publishable_key => ENV['pk_test_51Mtd9oFDHV8WArYoQsGGUp9dEEg37bgLC98vxIPU6iBb2oOeMuapk7Nn9f6GYF2NsrTyKNXElQglnObwTkLVOOsZ00pKb52mDX'],
  :secret_key => ENV['sk_test_51Mtd9oFDHV8WArYoEsMLSwl83KS297xmxvzFP5XnchFZGZt6SdXwvf9UnBlZcYwPP3pbgMHJaCRbYjFqREaGF0k000SNbiNe1s']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
