# frozen_string_literal: true

module Straddle
  module Models
    class PaykeyConfiguration < Straddle::Internal::Type::BaseModel
      # @!attribute processing_method
      #
      #   @return [Symbol, Straddle::Models::PaykeyProcessingMode, nil]
      optional :processing_method, enum: -> { Straddle::PaykeyProcessingMode }

      # @!attribute sandbox_outcome
      #
      #   @return [Symbol, Straddle::Models::SimulatedPaykeyOutcome, nil]
      optional :sandbox_outcome, enum: -> { Straddle::SimulatedPaykeyOutcome }

      # @!method initialize(processing_method: nil, sandbox_outcome: nil)
      #   @param processing_method [Symbol, Straddle::Models::PaykeyProcessingMode]
      #   @param sandbox_outcome [Symbol, Straddle::Models::SimulatedPaykeyOutcome]
    end
  end
end
