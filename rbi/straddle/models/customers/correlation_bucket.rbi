# typed: strong

module Straddle
  module Models
    module Customers
      module CorrelationBucket
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Straddle::Customers::CorrelationBucket) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LOW_CONFIDENCE =
          T.let(
            :low_confidence,
            Straddle::Customers::CorrelationBucket::TaggedSymbol
          )
        POTENTIAL_MATCH =
          T.let(
            :potential_match,
            Straddle::Customers::CorrelationBucket::TaggedSymbol
          )
        LIKELY_MATCH =
          T.let(
            :likely_match,
            Straddle::Customers::CorrelationBucket::TaggedSymbol
          )
        HIGH_CONFIDENCE =
          T.let(
            :high_confidence,
            Straddle::Customers::CorrelationBucket::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Straddle::Customers::CorrelationBucket::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
