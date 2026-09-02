# typed: strong

module Straddle
  module Models
    module PaykeyBalanceRefreshStatus
      extend Straddle::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Straddle::PaykeyBalanceRefreshStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PENDING =
        T.let(:pending, Straddle::PaykeyBalanceRefreshStatus::TaggedSymbol)
      COMPLETED =
        T.let(:completed, Straddle::PaykeyBalanceRefreshStatus::TaggedSymbol)
      FAILED =
        T.let(:failed, Straddle::PaykeyBalanceRefreshStatus::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Straddle::PaykeyBalanceRefreshStatus::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
