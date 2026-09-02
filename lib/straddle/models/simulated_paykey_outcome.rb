# frozen_string_literal: true

module Straddle
  module Models
    module SimulatedPaykeyOutcome
      extend Straddle::Internal::Type::Enum

      STANDARD = :standard
      ACTIVE = :active
      REJECTED = :rejected
      REVIEW = :review

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
