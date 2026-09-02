# typed: strong

module Straddle
  module Models
    class FundingEventConfiguration < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Straddle::FundingEventConfiguration,
            Straddle::Internal::AnyHash
          )
        end

      # Processing outcome configured for this simulated funding event.
      sig do
        returns(T.nilable(Straddle::SimulatedPaymentOutcome::TaggedSymbol))
      end
      attr_reader :sandbox_outcome

      sig do
        params(
          sandbox_outcome: Straddle::SimulatedPaymentOutcome::OrSymbol
        ).void
      end
      attr_writer :sandbox_outcome

      sig do
        params(
          sandbox_outcome: Straddle::SimulatedPaymentOutcome::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Processing outcome configured for this simulated funding event.
        sandbox_outcome: nil
      )
      end

      sig do
        override.returns(
          { sandbox_outcome: Straddle::SimulatedPaymentOutcome::TaggedSymbol }
        )
      end
      def to_hash
      end
    end
  end
end
