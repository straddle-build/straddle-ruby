# frozen_string_literal: true

module Straddle
  module Models
    class FundingEventConfiguration < Straddle::Internal::Type::BaseModel
      # @!attribute sandbox_outcome
      #   Processing outcome configured for this simulated funding event.
      #
      #   @return [Symbol, Straddle::Models::SimulatedPaymentOutcome, nil]
      optional :sandbox_outcome, enum: -> { Straddle::SimulatedPaymentOutcome }

      # @!method initialize(sandbox_outcome: nil)
      #   @param sandbox_outcome [Symbol, Straddle::Models::SimulatedPaymentOutcome] Processing outcome configured for this simulated funding event.
    end
  end
end
