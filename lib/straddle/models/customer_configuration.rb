# frozen_string_literal: true

module Straddle
  module Models
    class CustomerConfiguration < Straddle::Internal::Type::BaseModel
      # @!attribute processing_method
      #
      #   @return [Symbol, Straddle::Models::PaykeyProcessingMode, nil]
      optional :processing_method, enum: -> { Straddle::PaykeyProcessingMode }

      # @!attribute sandbox_outcome
      #
      #   @return [Symbol, Straddle::Models::SimulatedCustomerOutcome, nil]
      optional :sandbox_outcome, enum: -> { Straddle::SimulatedCustomerOutcome }

      # @!method initialize(processing_method: nil, sandbox_outcome: nil)
      #   @param processing_method [Symbol, Straddle::Models::PaykeyProcessingMode]
      #   @param sandbox_outcome [Symbol, Straddle::Models::SimulatedCustomerOutcome]
    end
  end
end
