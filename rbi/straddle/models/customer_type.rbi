# typed: strong

module Straddle
  module Models
    module CustomerType
      extend Straddle::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Straddle::CustomerType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      INDIVIDUAL = T.let(:individual, Straddle::CustomerType::TaggedSymbol)
      BUSINESS = T.let(:business, Straddle::CustomerType::TaggedSymbol)

      sig { override.returns(T::Array[Straddle::CustomerType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
