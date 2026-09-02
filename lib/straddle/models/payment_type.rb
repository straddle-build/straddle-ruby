# frozen_string_literal: true

module Straddle
  module Models
    # The type of payment.
    module PaymentType
      extend Straddle::Internal::Type::Enum

      CHARGE = :charge
      PAYOUT = :payout

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
