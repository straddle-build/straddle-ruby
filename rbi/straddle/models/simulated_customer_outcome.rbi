# typed: strong

module Straddle
  module Models
    module SimulatedCustomerOutcome
      extend Straddle::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Straddle::SimulatedCustomerOutcome) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      STANDARD =
        T.let(:standard, Straddle::SimulatedCustomerOutcome::TaggedSymbol)
      VERIFIED =
        T.let(:verified, Straddle::SimulatedCustomerOutcome::TaggedSymbol)
      REJECTED =
        T.let(:rejected, Straddle::SimulatedCustomerOutcome::TaggedSymbol)
      REVIEW = T.let(:review, Straddle::SimulatedCustomerOutcome::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Straddle::SimulatedCustomerOutcome::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
