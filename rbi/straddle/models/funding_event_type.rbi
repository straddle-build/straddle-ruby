# typed: strong

module Straddle
  module Models
    # Reason for the funding event. `charge_deposit` settles collected charges to the
    # linked bank account. `charge_reversal` withdraws funds for reversed charges.
    # `payout_withdrawal` withdraws funds for payouts. `payout_return` deposits
    # returned payout funds.
    module FundingEventType
      extend Straddle::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Straddle::FundingEventType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      CHARGE_DEPOSIT =
        T.let(:charge_deposit, Straddle::FundingEventType::TaggedSymbol)
      CHARGE_REVERSAL =
        T.let(:charge_reversal, Straddle::FundingEventType::TaggedSymbol)
      PAYOUT_RETURN =
        T.let(:payout_return, Straddle::FundingEventType::TaggedSymbol)
      PAYOUT_WITHDRAWAL =
        T.let(:payout_withdrawal, Straddle::FundingEventType::TaggedSymbol)

      sig do
        override.returns(T::Array[Straddle::FundingEventType::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
