# frozen_string_literal: true

module Straddle
  module Models
    class AccountSettingsAPI < Straddle::Internal::Type::BaseModel
      # @!attribute charges
      #
      #   @return [Straddle::Models::ChargeSettings]
      required :charges, -> { Straddle::ChargeSettings }

      # @!attribute configuration
      #
      #   @return [Straddle::Models::AccountPolicyControls]
      required :configuration, -> { Straddle::AccountPolicyControls }

      # @!attribute consent_types
      #
      #   @return [Straddle::Models::AccountConsentSettings]
      required :consent_types, -> { Straddle::AccountConsentSettings }

      # @!attribute customer_types
      #
      #   @return [Straddle::Models::AccountCustomerTypeSettings]
      required :customer_types, -> { Straddle::AccountCustomerTypeSettings }

      # @!attribute payment_types
      #
      #   @return [Straddle::Models::AccountPaymentTypeSettings]
      required :payment_types, -> { Straddle::AccountPaymentTypeSettings }

      # @!attribute payouts
      #
      #   @return [Straddle::Models::PayoutSettings]
      required :payouts, -> { Straddle::PayoutSettings }

      # @!attribute statement_settings
      #
      #   @return [Straddle::Models::AccountStatementSettings]
      required :statement_settings, -> { Straddle::AccountStatementSettings }

      # @!method initialize(charges:, configuration:, consent_types:, customer_types:, payment_types:, payouts:, statement_settings:)
      #   @param charges [Straddle::Models::ChargeSettings]
      #   @param configuration [Straddle::Models::AccountPolicyControls]
      #   @param consent_types [Straddle::Models::AccountConsentSettings]
      #   @param customer_types [Straddle::Models::AccountCustomerTypeSettings]
      #   @param payment_types [Straddle::Models::AccountPaymentTypeSettings]
      #   @param payouts [Straddle::Models::PayoutSettings]
      #   @param statement_settings [Straddle::Models::AccountStatementSettings]
    end
  end
end
