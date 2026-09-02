# typed: strong

module Straddle
  module Models
    class AccountPaymentCapabilities < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Straddle::AccountPaymentCapabilities,
            Straddle::Internal::AnyHash
          )
        end

      sig { returns(Straddle::AccountCapability) }
      attr_reader :charges

      sig { params(charges: Straddle::AccountCapability::OrHash).void }
      attr_writer :charges

      sig { returns(Straddle::AccountCapability) }
      attr_reader :payouts

      sig { params(payouts: Straddle::AccountCapability::OrHash).void }
      attr_writer :payouts

      sig do
        params(
          charges: Straddle::AccountCapability::OrHash,
          payouts: Straddle::AccountCapability::OrHash
        ).returns(T.attached_class)
      end
      def self.new(charges:, payouts:)
      end

      sig do
        override.returns(
          {
            charges: Straddle::AccountCapability,
            payouts: Straddle::AccountCapability
          }
        )
      end
      def to_hash
      end
    end
  end
end
