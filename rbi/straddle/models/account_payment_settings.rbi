# typed: strong

module Straddle
  module Models
    class AccountPaymentSettings < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::AccountPaymentSettings, Straddle::Internal::AnyHash)
        end

      sig { returns(Straddle::AccountChargeSettings) }
      attr_reader :charges

      sig { params(charges: Straddle::AccountChargeSettings::OrHash).void }
      attr_writer :charges

      sig { returns(Straddle::AccountPayoutSettings) }
      attr_reader :payouts

      sig { params(payouts: Straddle::AccountPayoutSettings::OrHash).void }
      attr_writer :payouts

      sig do
        params(
          charges: Straddle::AccountChargeSettings::OrHash,
          payouts: Straddle::AccountPayoutSettings::OrHash
        ).returns(T.attached_class)
      end
      def self.new(charges:, payouts:)
      end

      sig do
        override.returns(
          {
            charges: Straddle::AccountChargeSettings,
            payouts: Straddle::AccountPayoutSettings
          }
        )
      end
      def to_hash
      end
    end
  end
end
