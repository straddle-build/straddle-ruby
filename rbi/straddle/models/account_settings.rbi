# typed: strong

module Straddle
  module Models
    class AccountSettingsAPI < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::AccountSettingsAPI, Straddle::Internal::AnyHash)
        end

      sig { returns(Straddle::ChargeSettings) }
      attr_reader :charges

      sig { params(charges: Straddle::ChargeSettings::OrHash).void }
      attr_writer :charges

      sig { returns(Straddle::AccountPolicyControls) }
      attr_reader :configuration

      sig do
        params(configuration: Straddle::AccountPolicyControls::OrHash).void
      end
      attr_writer :configuration

      sig { returns(Straddle::AccountConsentSettings) }
      attr_reader :consent_types

      sig do
        params(consent_types: Straddle::AccountConsentSettings::OrHash).void
      end
      attr_writer :consent_types

      sig { returns(Straddle::AccountCustomerTypeSettings) }
      attr_reader :customer_types

      sig do
        params(
          customer_types: Straddle::AccountCustomerTypeSettings::OrHash
        ).void
      end
      attr_writer :customer_types

      sig { returns(Straddle::AccountPaymentTypeSettings) }
      attr_reader :payment_types

      sig do
        params(payment_types: Straddle::AccountPaymentTypeSettings::OrHash).void
      end
      attr_writer :payment_types

      sig { returns(Straddle::PayoutSettings) }
      attr_reader :payouts

      sig { params(payouts: Straddle::PayoutSettings::OrHash).void }
      attr_writer :payouts

      sig { returns(Straddle::AccountStatementSettings) }
      attr_reader :statement_settings

      sig do
        params(
          statement_settings: Straddle::AccountStatementSettings::OrHash
        ).void
      end
      attr_writer :statement_settings

      sig do
        params(
          charges: Straddle::ChargeSettings::OrHash,
          configuration: Straddle::AccountPolicyControls::OrHash,
          consent_types: Straddle::AccountConsentSettings::OrHash,
          customer_types: Straddle::AccountCustomerTypeSettings::OrHash,
          payment_types: Straddle::AccountPaymentTypeSettings::OrHash,
          payouts: Straddle::PayoutSettings::OrHash,
          statement_settings: Straddle::AccountStatementSettings::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        charges:,
        configuration:,
        consent_types:,
        customer_types:,
        payment_types:,
        payouts:,
        statement_settings:
      )
      end

      sig do
        override.returns(
          {
            charges: Straddle::ChargeSettings,
            configuration: Straddle::AccountPolicyControls,
            consent_types: Straddle::AccountConsentSettings,
            customer_types: Straddle::AccountCustomerTypeSettings,
            payment_types: Straddle::AccountPaymentTypeSettings,
            payouts: Straddle::PayoutSettings,
            statement_settings: Straddle::AccountStatementSettings
          }
        )
      end
      def to_hash
      end
    end
  end
end
