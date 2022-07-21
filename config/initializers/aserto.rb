# frozen_string_literal: true

require 'aserto/rails'

Aserto.with_identity_mapper do |_request|
  {
    identity: 'rick@the-citadel.com',
    type: :sub
  }
end

Aserto.configure do |config|
  config.policy_id = '8a402085-b044-11ec-a3c0-01e16a9c7735'
  config.tenant_id = '45bfc282-1533-11ec-9980-00e16a9c7735'
  config.authorizer_api_key = ENV.fetch('AUTHORIZER_API_KEY', nil)
  config.policy_root = 'peoplefinder'
  config.service_url = 'authorizer.eng.aserto.com:8443'
  config.decision = 'allowed'
  config.logger = Rails.logger
end
