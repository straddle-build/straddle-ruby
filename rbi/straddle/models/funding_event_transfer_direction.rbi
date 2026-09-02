# typed: strong

module Straddle
  module Models
    # Transfer direction relative to the linked bank account. `deposit` moves funds
    # into the account, and `withdrawal` moves funds out.
    module FundingEventTransferDirection
      extend Straddle::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Straddle::FundingEventTransferDirection) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      DEPOSIT =
        T.let(:deposit, Straddle::FundingEventTransferDirection::TaggedSymbol)
      WITHDRAWAL =
        T.let(
          :withdrawal,
          Straddle::FundingEventTransferDirection::TaggedSymbol
        )

      sig do
        override.returns(
          T::Array[Straddle::FundingEventTransferDirection::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
