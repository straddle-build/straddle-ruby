# typed: strong

module Straddle
  module Models
    module BalanceCheckMode
      extend Straddle::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Straddle::BalanceCheckMode) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      REQUIRED = T.let(:required, Straddle::BalanceCheckMode::TaggedSymbol)
      ENABLED = T.let(:enabled, Straddle::BalanceCheckMode::TaggedSymbol)
      DISABLED = T.let(:disabled, Straddle::BalanceCheckMode::TaggedSymbol)

      sig do
        override.returns(T::Array[Straddle::BalanceCheckMode::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
