# frozen_string_literal: true

module Straddle
  module Models
    module SimulatedCustomerOutcome
      extend Straddle::Internal::Type::Enum

      STANDARD = :standard
      VERIFIED = :verified
      REJECTED = :rejected
      REVIEW = :review

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
