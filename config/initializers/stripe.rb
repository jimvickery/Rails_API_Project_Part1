Rails.configuration.stripe = {
  :publishable_key => 'pk_test_LXrvje4dGJjV13SybEmLHK7W',
  :secret_key => 'sk_test_jRqqgkeQZPAEdET8sH1k8xNR'
}
Stripe.api_key = Rails.configuration.stripe[:secret_key]
