# frozen_string_literal: true

module Straddle
  module Models
    class FundingEventSimulationResult < Straddle::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the created funding event.
      #
      #   @return [String]
      required :id, String

      # @!method initialize(id:)
      #   @param id [String] Unique identifier for the created funding event.
    end
  end
end
