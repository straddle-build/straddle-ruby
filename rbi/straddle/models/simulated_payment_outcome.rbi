# typed: strong

module Straddle
  module Models
    # Payment will simulate processing if not Standard.
    module SimulatedPaymentOutcome
      extend Straddle::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Straddle::SimulatedPaymentOutcome) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      STANDARD =
        T.let(:standard, Straddle::SimulatedPaymentOutcome::TaggedSymbol)
      PAID = T.let(:paid, Straddle::SimulatedPaymentOutcome::TaggedSymbol)
      ON_HOLD_DAILY_LIMIT =
        T.let(
          :on_hold_daily_limit,
          Straddle::SimulatedPaymentOutcome::TaggedSymbol
        )
      CANCELLED_FOR_FRAUD_RISK =
        T.let(
          :cancelled_for_fraud_risk,
          Straddle::SimulatedPaymentOutcome::TaggedSymbol
        )
      CANCELLED_FOR_BALANCE_CHECK =
        T.let(
          :cancelled_for_balance_check,
          Straddle::SimulatedPaymentOutcome::TaggedSymbol
        )
      FAILED_INSUFFICIENT_FUNDS =
        T.let(
          :failed_insufficient_funds,
          Straddle::SimulatedPaymentOutcome::TaggedSymbol
        )
      REVERSED_INSUFFICIENT_FUNDS =
        T.let(
          :reversed_insufficient_funds,
          Straddle::SimulatedPaymentOutcome::TaggedSymbol
        )
      FAILED_CUSTOMER_DISPUTE =
        T.let(
          :failed_customer_dispute,
          Straddle::SimulatedPaymentOutcome::TaggedSymbol
        )
      REVERSED_CUSTOMER_DISPUTE =
        T.let(
          :reversed_customer_dispute,
          Straddle::SimulatedPaymentOutcome::TaggedSymbol
        )
      FAILED_CLOSED_BANK_ACCOUNT =
        T.let(
          :failed_closed_bank_account,
          Straddle::SimulatedPaymentOutcome::TaggedSymbol
        )
      REVERSED_CLOSED_BANK_ACCOUNT =
        T.let(
          :reversed_closed_bank_account,
          Straddle::SimulatedPaymentOutcome::TaggedSymbol
        )
      FAILED_NOT_AUTHORIZED =
        T.let(
          :failed_not_authorized,
          Straddle::SimulatedPaymentOutcome::TaggedSymbol
        )
      REVERSED_NOT_AUTHORIZED =
        T.let(
          :reversed_not_authorized,
          Straddle::SimulatedPaymentOutcome::TaggedSymbol
        )

      sig do
        override.returns(
          T::Array[Straddle::SimulatedPaymentOutcome::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
