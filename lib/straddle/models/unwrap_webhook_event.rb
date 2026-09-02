# frozen_string_literal: true

module Straddle
  module Models
    module UnwrapWebhookEvent
      extend Straddle::Internal::Type::Union

      variant -> { Straddle::AccountCreatedV1WebhookEvent }

      variant -> { Straddle::AccountEventV1WebhookEvent }

      variant -> { Straddle::RepresentativeEventV1WebhookEvent }

      variant -> { Straddle::RepresentativeCreatedV1WebhookEvent }

      variant -> { Straddle::LinkedBankAccountEventV1WebhookEvent }

      variant -> { Straddle::LinkedBankAccountCreatedV1WebhookEvent }

      variant -> { Straddle::CapabilityRequestEventV1WebhookEvent }

      variant -> { Straddle::CapabilityRequestCreatedV1WebhookEvent }

      variant -> { Straddle::CustomerEventV1WebhookEvent }

      variant -> { Straddle::CustomerCreatedV1WebhookEvent }

      variant -> { Straddle::PaykeyEventV1WebhookEvent }

      variant -> { Straddle::PaykeyCreatedV1WebhookEvent }

      variant -> { Straddle::ChargeCreatedV1WebhookEvent }

      variant -> { Straddle::ChargeEventV1WebhookEvent }

      variant -> { Straddle::PayoutCreatedV1WebhookEvent }

      variant -> { Straddle::PayoutEventV1WebhookEvent }

      variant -> { Straddle::PlatformEventV1WebhookEvent }

      variant -> { Straddle::PlatformCreatedV1WebhookEvent }

      variant -> { Straddle::UserEventV1WebhookEvent }

      variant -> { Straddle::UserCreatedV1WebhookEvent }

      variant -> { Straddle::FundingEventCreatedV1WebhookEvent }

      variant -> { Straddle::FundingEventEventV1WebhookEvent }

      # @!method self.variants
      #   @return [Array(Straddle::Models::AccountCreatedV1WebhookEvent, Straddle::Models::AccountEventV1WebhookEvent, Straddle::Models::RepresentativeEventV1WebhookEvent, Straddle::Models::RepresentativeCreatedV1WebhookEvent, Straddle::Models::LinkedBankAccountEventV1WebhookEvent, Straddle::Models::LinkedBankAccountCreatedV1WebhookEvent, Straddle::Models::CapabilityRequestEventV1WebhookEvent, Straddle::Models::CapabilityRequestCreatedV1WebhookEvent, Straddle::Models::CustomerEventV1WebhookEvent, Straddle::Models::CustomerCreatedV1WebhookEvent, Straddle::Models::PaykeyEventV1WebhookEvent, Straddle::Models::PaykeyCreatedV1WebhookEvent, Straddle::Models::ChargeCreatedV1WebhookEvent, Straddle::Models::ChargeEventV1WebhookEvent, Straddle::Models::PayoutCreatedV1WebhookEvent, Straddle::Models::PayoutEventV1WebhookEvent, Straddle::Models::PlatformEventV1WebhookEvent, Straddle::Models::PlatformCreatedV1WebhookEvent, Straddle::Models::UserEventV1WebhookEvent, Straddle::Models::UserCreatedV1WebhookEvent, Straddle::Models::FundingEventCreatedV1WebhookEvent, Straddle::Models::FundingEventEventV1WebhookEvent)]
    end
  end
end
