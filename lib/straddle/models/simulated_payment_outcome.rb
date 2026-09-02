# frozen_string_literal: true

module Straddle
  module Models
    # Payment will simulate processing if not Standard.
    module SimulatedPaymentOutcome
      extend Straddle::Internal::Type::Enum

      STANDARD = :standard
      PAID = :paid
      ON_HOLD_DAILY_LIMIT = :on_hold_daily_limit
      CANCELLED_FOR_FRAUD_RISK = :cancelled_for_fraud_risk
      CANCELLED_FOR_BALANCE_CHECK = :cancelled_for_balance_check
      FAILED_INSUFFICIENT_FUNDS = :failed_insufficient_funds
      REVERSED_INSUFFICIENT_FUNDS = :reversed_insufficient_funds
      FAILED_CUSTOMER_DISPUTE = :failed_customer_dispute
      REVERSED_CUSTOMER_DISPUTE = :reversed_customer_dispute
      FAILED_CLOSED_BANK_ACCOUNT = :failed_closed_bank_account
      REVERSED_CLOSED_BANK_ACCOUNT = :reversed_closed_bank_account
      FAILED_NOT_AUTHORIZED = :failed_not_authorized
      REVERSED_NOT_AUTHORIZED = :reversed_not_authorized

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
