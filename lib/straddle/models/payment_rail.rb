# frozen_string_literal: true

module Straddle
  module Models
    # The payment rail used for the charge or payout.
    module PaymentRail
      extend Straddle::Internal::Type::Enum

      ACH = :ach

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
