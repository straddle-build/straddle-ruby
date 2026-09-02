# typed: strong

module Straddle
  module Models
    # Sort direction for the results.
    module SortOrder
      extend Straddle::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Straddle::SortOrder) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ASC = T.let(:asc, Straddle::SortOrder::TaggedSymbol)
      DESC = T.let(:desc, Straddle::SortOrder::TaggedSymbol)

      sig { override.returns(T::Array[Straddle::SortOrder::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
