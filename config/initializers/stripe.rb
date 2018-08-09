Rails.configuration.stripe = {
  :publishable_key => "pk_test_g6do5S237ekq10r65BnxO6S0",
  :secret_key      => "sk_test_BQokikJOvBiI2HlWgH4olfQ2"
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
