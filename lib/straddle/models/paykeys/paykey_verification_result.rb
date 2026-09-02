# frozen_string_literal: true

module Straddle
  module Models
    module Paykeys
      module PaykeyVerificationResult
        extend Straddle::Internal::Type::Enum

        ACCEPT = :accept
        REJECT = :reject
        REVIEW = :review

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end

    PaykeyVerificationResult = Paykeys::PaykeyVerificationResult
  end
end
