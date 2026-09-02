# typed: strong

module Straddle
  module Models
    # Transfer direction relative to the linked bank account. `deposit` moves funds
    # into the account, and `withdrawal` moves funds out.
    module TransferDirection
      extend Straddle::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Straddle::TransferDirection) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      DEPOSIT = T.let(:deposit, Straddle::TransferDirection::TaggedSymbol)
      WITHDRAWAL = T.let(:withdrawal, Straddle::TransferDirection::TaggedSymbol)

      sig do
        override.returns(T::Array[Straddle::TransferDirection::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
