# frozen_string_literal: true

module Straddle
  module Models
    class PayoutConfiguration < Straddle::Internal::Type::BaseModel
      # @!attribute auto_hold
      #   Whether to place the payout on hold automatically after creation.
      #
      #   @return [Boolean, nil]
      optional :auto_hold, Straddle::Internal::Type::Boolean, nil?: true

      # @!attribute auto_hold_message
      #   Reason for placing the payout on hold automatically.
      #
      #   @return [String, nil]
      optional :auto_hold_message, String, nil?: true

      # @!attribute sandbox_outcome
      #   Payment will simulate processing if not Standard.
      #
      #   @return [Symbol, Straddle::Models::SimulatedPaymentOutcome, nil]
      optional :sandbox_outcome, enum: -> { Straddle::SimulatedPaymentOutcome }

      # @!method initialize(auto_hold: nil, auto_hold_message: nil, sandbox_outcome: nil)
      #   @param auto_hold [Boolean, nil] Whether to place the payout on hold automatically after creation.
      #
      #   @param auto_hold_message [String, nil] Reason for placing the payout on hold automatically.
      #
      #   @param sandbox_outcome [Symbol, Straddle::Models::SimulatedPaymentOutcome] Payment will simulate processing if not Standard.
    end
  end
end
