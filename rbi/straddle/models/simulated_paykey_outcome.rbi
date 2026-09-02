# typed: strong

module Straddle
  module Models
    module SimulatedPaykeyOutcome
      extend Straddle::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Straddle::SimulatedPaykeyOutcome) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      STANDARD =
        T.let(:standard, Straddle::SimulatedPaykeyOutcome::TaggedSymbol)
      ACTIVE = T.let(:active, Straddle::SimulatedPaykeyOutcome::TaggedSymbol)
      REJECTED =
        T.let(:rejected, Straddle::SimulatedPaykeyOutcome::TaggedSymbol)
      REVIEW = T.let(:review, Straddle::SimulatedPaykeyOutcome::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Straddle::SimulatedPaykeyOutcome::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
