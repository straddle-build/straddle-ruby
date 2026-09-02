# typed: strong

module Straddle
  module Models
    class ChargeConfiguration < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::ChargeConfiguration, Straddle::Internal::AnyHash)
        end

      # Balance check mode to use before processing the charge.
      sig { returns(Straddle::BalanceCheckMode::OrSymbol) }
      attr_accessor :balance_check

      # Whether to place the charge on hold automatically after creation.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :auto_hold

      # Reason for placing the charge on hold automatically.
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
          balance_check: Straddle::BalanceCheckMode::OrSymbol,
          auto_hold: T.nilable(T::Boolean),
          auto_hold_message: T.nilable(String),
          sandbox_outcome: Straddle::SimulatedPaymentOutcome::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Balance check mode to use before processing the charge.
        balance_check:,
        # Whether to place the charge on hold automatically after creation.
        auto_hold: nil,
        # Reason for placing the charge on hold automatically.
        auto_hold_message: nil,
        # Payment will simulate processing if not Standard.
        sandbox_outcome: nil
      )
      end

      sig do
        override.returns(
          {
            balance_check: Straddle::BalanceCheckMode::OrSymbol,
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
