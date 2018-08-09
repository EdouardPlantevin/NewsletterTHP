Rails.configuration.stripe = {
  :publishable_key => ENV["sk_test_BQokikJOvBiI2HlWgH4olfQ2"],
  :secret_key      => ENV['STRIPE_SECRET_KEY']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
