# typed: strong

module Straddle
  module Models
    class PayoutConfiguration < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::PayoutConfiguration, Straddle::Internal::AnyHash)
        end

      # Whether to place the payout on hold automatically after creation.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :auto_hold

      # Reason for placing the payout on hold automatically.
      sig { returns(T.nilable(String)) }
      attr_accessor :auto_hold_message

      # Payment will simulate processing if not Standard.
      sig { returns(T.nilable(Straddle::SimulatedPaymentOutcome::OrSymbol)) }
      attr_reader :sandbox_outcome

      sig do
        params(
          sandbox_outcome: Straddle::SimulatedPaymentOutcome::OrSymbol
        ).void
      end
      attr_writer :sandbox_outcome

      sig do
        params(
          auto_hold: T.nilable(T::Boolean),
          auto_hold_message: T.nilable(String),
          sandbox_outcome: Straddle::SimulatedPaymentOutcome::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Whether to place the payout on hold automatically after creation.
        auto_hold: nil,
        # Reason for placing the payout on hold automatically.
        auto_hold_message: nil,
        # Payment will simulate processing if not Standard.
        sandbox_outcome: nil
      )
      end

      sig do
        override.returns(
          {
            auto_hold: T.nilable(T::Boolean),
            auto_hold_message: T.nilable(String),
            sandbox_outcome: Straddle::SimulatedPaymentOutcome::OrSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
