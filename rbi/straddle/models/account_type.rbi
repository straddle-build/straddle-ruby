# typed: strong

module Straddle
  module Models
    module AccountType
      extend Straddle::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Straddle::AccountType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      CHECKING = T.let(:checking, Straddle::AccountType::TaggedSymbol)
      SAVINGS = T.let(:savings, Straddle::AccountType::TaggedSymbol)

      sig { override.returns(T::Array[Straddle::AccountType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
