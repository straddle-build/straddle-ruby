# typed: strong

module Straddle
  module Models
    class AccountCapabilities < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::AccountCapabilities, Straddle::Internal::AnyHash)
        end

      sig { returns(Straddle::AccountConsentCapabilities) }
      attr_reader :consent_types

      sig do
        params(consent_types: Straddle::AccountConsentCapabilities::OrHash).void
      end
      attr_writer :consent_types

      sig { returns(Straddle::AccountCustomerCapabilities) }
      attr_reader :customer_types

      sig do
        params(
          customer_types: Straddle::AccountCustomerCapabilities::OrHash
        ).void
      end
      attr_writer :customer_types

      sig { returns(Straddle::AccountPaymentCapabilities) }
      attr_reader :payment_types

      sig do
        params(payment_types: Straddle::AccountPaymentCapabilities::OrHash).void
      end
      attr_writer :payment_types

      sig do
        params(
          consent_types: Straddle::AccountConsentCapabilities::OrHash,
          customer_types: Straddle::AccountCustomerCapabilities::OrHash,
          payment_types: Straddle::AccountPaymentCapabilities::OrHash
        ).returns(T.attached_class)
      end
      def self.new(consent_types:, customer_types:, payment_types:)
      end

      sig do
        override.returns(
          {
            consent_types: Straddle::AccountConsentCapabilities,
            customer_types: Straddle::AccountCustomerCapabilities,
            payment_types: Straddle::AccountPaymentCapabilities
          }
        )
      end
      def to_hash
      end
    end
  end
end
