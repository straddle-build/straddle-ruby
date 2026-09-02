# frozen_string_literal: true

module Straddle
  module Models
    module Customers
      module VerificationDecision
        extend Straddle::Internal::Type::Enum

        ACCEPT = :accept
        REJECT = :reject
        REVIEW = :review

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
