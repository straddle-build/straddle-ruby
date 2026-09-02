# typed: strong

module Straddle
  module Models
    class CustomerConfiguration < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::CustomerConfiguration, Straddle::Internal::AnyHash)
        end

      sig { returns(T.nilable(Straddle::PaykeyProcessingMode::OrSymbol)) }
      attr_reader :processing_method

      sig do
        params(processing_method: Straddle::PaykeyProcessingMode::OrSymbol).void
      end
      attr_writer :processing_method

      sig { returns(T.nilable(Straddle::SimulatedCustomerOutcome::OrSymbol)) }
      attr_reader :sandbox_outcome

      sig do
        params(
          sandbox_outcome: Straddle::SimulatedCustomerOutcome::OrSymbol
        ).void
      end
      attr_writer :sandbox_outcome

      sig do
        params(
          processing_method: Straddle::PaykeyProcessingMode::OrSymbol,
          sandbox_outcome: Straddle::SimulatedCustomerOutcome::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(processing_method: nil, sandbox_outcome: nil)
      end

      sig do
        override.returns(
          {
            processing_method: Straddle::PaykeyProcessingMode::OrSymbol,
            sandbox_outcome: Straddle::SimulatedCustomerOutcome::OrSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
