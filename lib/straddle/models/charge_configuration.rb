# frozen_string_literal: true

module Straddle
  module Models
    class ChargeConfiguration < Straddle::Internal::Type::BaseModel
      # @!attribute balance_check
      #   Balance check mode to use before processing the charge.
      #
      #   @return [Symbol, Straddle::Models::BalanceCheckMode]
      required :balance_check, enum: -> { Straddle::BalanceCheckMode }

      # @!attribute auto_hold
      #   Whether to place the charge on hold automatically after creation.
      #
      #   @return [Boolean, nil]
      optional :auto_hold, Straddle::Internal::Type::Boolean, nil?: true

      # @!attribute auto_hold_message
      #   Reason for placing the charge on hold automatically.
      #
      #   @return [String, nil]
      optional :auto_hold_message, String, nil?: true

      # @!attribute sandbox_outcome
      #   Payment will simulate processing if not Standard.
      #
      #   @return [Symbol, Straddle::Models::SimulatedPaymentOutcome, nil]
      optional :sandbox_outcome, enum: -> { Straddle::SimulatedPaymentOutcome }

      # @!method initialize(balance_check:, auto_hold: nil, auto_hold_message: nil, sandbox_outcome: nil)
      #   @param balance_check [Symbol, Straddle::Models::BalanceCheckMode] Balance check mode to use before processing the charge.
      #
      #   @param auto_hold [Boolean, nil] Whether to place the charge on hold automatically after creation.
      #
      #   @param auto_hold_message [String, nil] Reason for placing the charge on hold automatically.
      #
      #   @param sandbox_outcome [Symbol, Straddle::Models::SimulatedPaymentOutcome] Payment will simulate processing if not Standard.
    end
  end
end
