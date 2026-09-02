# typed: strong

module Straddle
  module Models
    module UnwrapWebhookEvent
      extend Straddle::Internal::Type::Union

      Variants =
        T.type_alias do
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
        end

      sig { override.returns(T::Array[Straddle::UnwrapWebhookEvent::Variants]) }
      def self.variants
      end
    end
  end
end
