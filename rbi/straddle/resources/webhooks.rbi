# typed: strong

module Straddle
  module Resources
    class Webhooks
      sig do
        params(
          payload: String,
          headers: T::Hash[String, String],
          key: T.nilable(String)
        ).returns(
          T.any(
            Straddle::AccountCreatedV1WebhookEvent,
            Straddle::AccountEventV1WebhookEvent,
            Straddle::RepresentativeEventV1WebhookEvent,
            Straddle::RepresentativeCreatedV1WebhookEvent,
            Straddle::LinkedBankAccountEventV1WebhookEvent,
            Straddle::LinkedBankAccountCreatedV1WebhookEvent,
            Straddle::CapabilityRequestEventV1WebhookEvent,
            Straddle::CapabilityRequestCreatedV1WebhookEvent,
            Straddle::CustomerEventV1WebhookEvent,
            Straddle::CustomerCreatedV1WebhookEvent,
            Straddle::PaykeyEventV1WebhookEvent,
            Straddle::PaykeyCreatedV1WebhookEvent,
            Straddle::ChargeCreatedV1WebhookEvent,
            Straddle::ChargeEventV1WebhookEvent,
            Straddle::PayoutCreatedV1WebhookEvent,
            Straddle::PayoutEventV1WebhookEvent,
            Straddle::PlatformEventV1WebhookEvent,
            Straddle::PlatformCreatedV1WebhookEvent,
            Straddle::UserEventV1WebhookEvent,
            Straddle::UserCreatedV1WebhookEvent,
            Straddle::FundingEventCreatedV1WebhookEvent,
            Straddle::FundingEventEventV1WebhookEvent
          )
        )
      end
      def unwrap(
        # The raw webhook payload as a string
        payload,
        # The raw HTTP headers that came with the payload
        headers:,
        # The webhook signing key
        key: @client.webhook_secret
      )
      end

      # @api private
      sig { params(client: Straddle::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
