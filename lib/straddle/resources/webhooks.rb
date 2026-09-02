# frozen_string_literal: true

module Straddle
  module Resources
    class Webhooks
      # @param payload [String] The raw webhook payload as a string
      #
      # @param headers [Hash{String=>String}] The raw HTTP headers that came with the payload
      #
      # @param key [String, nil] The webhook signing key
      #
      # @return [Straddle::Models::AccountCreatedV1WebhookEvent, Straddle::Models::AccountEventV1WebhookEvent, Straddle::Models::RepresentativeEventV1WebhookEvent, Straddle::Models::RepresentativeCreatedV1WebhookEvent, Straddle::Models::LinkedBankAccountEventV1WebhookEvent, Straddle::Models::LinkedBankAccountCreatedV1WebhookEvent, Straddle::Models::CapabilityRequestEventV1WebhookEvent, Straddle::Models::CapabilityRequestCreatedV1WebhookEvent, Straddle::Models::CustomerEventV1WebhookEvent, Straddle::Models::CustomerCreatedV1WebhookEvent, Straddle::Models::PaykeyEventV1WebhookEvent, Straddle::Models::PaykeyCreatedV1WebhookEvent, Straddle::Models::ChargeCreatedV1WebhookEvent, Straddle::Models::ChargeEventV1WebhookEvent, Straddle::Models::PayoutCreatedV1WebhookEvent, Straddle::Models::PayoutEventV1WebhookEvent, Straddle::Models::PlatformEventV1WebhookEvent, Straddle::Models::PlatformCreatedV1WebhookEvent, Straddle::Models::UserEventV1WebhookEvent, Straddle::Models::UserCreatedV1WebhookEvent, Straddle::Models::FundingEventCreatedV1WebhookEvent, Straddle::Models::FundingEventEventV1WebhookEvent]
      def unwrap(payload, headers:, key: @client.webhook_secret)
        if key.nil?
          raise ArgumentError.new(
            "Cannot verify a webhook without a key on either the client's webhook_secret or passed in as an argument"
          )
        end

        ::StandardWebhooks::Webhook.new(key).verify(payload, headers)

        parsed = JSON.parse(payload, symbolize_names: true)
        Straddle::Internal::Type::Converter.coerce(Straddle::Models::UnwrapWebhookEvent, parsed)
      end

      # @api private
      #
      # @param client [Straddle::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
