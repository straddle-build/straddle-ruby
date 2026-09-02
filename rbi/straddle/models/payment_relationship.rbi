# typed: strong

module Straddle
  module Models
    module PaymentRelationship
      extend Straddle::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Straddle::PaymentRelationship) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ORIGINAL = T.let(:original, Straddle::PaymentRelationship::TaggedSymbol)
      RESUBMIT = T.let(:resubmit, Straddle::PaymentRelationship::TaggedSymbol)
      REFUND = T.let(:refund, Straddle::PaymentRelationship::TaggedSymbol)

      sig do
        override.returns(T::Array[Straddle::PaymentRelationship::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
