# frozen_string_literal: true

module Straddle
  module Models
    module Customers
      module CorrelationBucket
        extend Straddle::Internal::Type::Enum

        LOW_CONFIDENCE = :low_confidence
        POTENTIAL_MATCH = :potential_match
        LIKELY_MATCH = :likely_match
        HIGH_CONFIDENCE = :high_confidence

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
